﻿using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using XERP.Client.WPF.ExecutableProgramMaintenance.ViewModels;
using SimpleMvvmToolkit;
using System.Collections.Generic;
using XERP.Client.Models;
using XERP.Client.WPF;
namespace XERP.Client.WPF.ExecutableProgramMaintenance.Views
{
    /// <summary>
    /// Interaction logic for ExecutableProgramMaintenanceView.xaml
    /// </summary>
    public partial class MainMaintenanceView : UserControl
    {
        ViewModelLocator _vml = new ViewModelLocator();
        MainMaintenanceViewModel _viewModel;
        private LogIn.MainWindow _logInWindow;
        public MainMaintenanceView()
        {
            try
            {
                this.Resources.MergedDictionaries.Add(XERP.Client.WPF.ExecutableProgramMaintenance.Resources.SharedDictionaryManager.MenuImagesSharedDictionary);
                this.Resources.MergedDictionaries.Add(XERP.Client.WPF.ExecutableProgramMaintenance.Resources.SharedDictionaryManager.BaseControlsSharedDictionary);
                _viewModel = _vml.MainMaintenanceViewModel;
                DataContext = _viewModel;
                _viewModel.ErrorNotice += OnErrorNotice;
                _viewModel.MessageNotice += OnMessageNotice;
                _viewModel.SearchNotice += OnSearchNotice;
                _viewModel.TypeSearchNotice += OnTypeSearchNotice;
                _viewModel.CodeSearchNotice += OnCodeSearchNotice;
                _viewModel.SaveRequiredNotice += OnSaveRequiredNotice;
                _viewModel.NewRecordNeededNotice += OnNewRecordNeededNotice;
                _viewModel.AuthenticatedNotice += OnAuthenticatedNotice;
                //_viewModel.NewRecordCreatedNotice += OnNewRecordCreatedNotice;

                InitializeComponent();
                
                if (!XERP.Client.ClientSessionSingleton.Instance.SessionIsAuthentic)
                {
                    DisplayLogIn();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void OnErrorNotice(object sender, NotificationEventArgs<Exception> e)
        {
            MessageBox.Show(e.Message, "Error", MessageBoxButton.OK);
        }

        private void OnMessageNotice(object sender, NotificationEventArgs e)
        {
            MessageBox.Show(e.Message, "Error", MessageBoxButton.OK);
        }

        private void OpenTypeMaintenance_Click(object sender, RoutedEventArgs e)
        {
            TypeMaintenanceWindow maintenanceWindow = new TypeMaintenanceWindow();
            maintenanceWindow.Show();
        }

        private void OpenCodeMaintenance_Click(object sender, RoutedEventArgs e)
        {
            CodeMaintenanceWindow maintenanceWindow = new CodeMaintenanceWindow();
            maintenanceWindow.Show();
        }

        private void SaveMenuItem_Click(object sender, RoutedEventArgs e)
        {
            WiggleToGhostField();
            if (_viewModel.AllowCommit == true)
            {
                _viewModel.SaveCommand();
            }
        }

        private void WiggleToGhostField()
        {//textboxex by default set bindings on lost focus
            //so we have a ghost control on each tab and will wiggle focus to it and back to commit data on saves...
            UIElement elem = Keyboard.FocusedElement as UIElement;
            Keyboard.Focus(ghost);
            Keyboard.Focus(ghost2);
            Keyboard.Focus(elem);
        }

        private void OnSearchNotice(Object sender, NotificationEventArgs e)
        {
            MainSearchWindow searchWindow = new MainSearchWindow();
            searchWindow.Show(); 
        }

        private void OnTypeSearchNotice(Object sender, NotificationEventArgs e)
        {
            TypeSearchWindow searchWindow = new TypeSearchWindow();
            searchWindow.ShowDialog();
        }

        private void OnCodeSearchNotice(Object sender, NotificationEventArgs e)
        {
            CodeSearchWindow searchWindow = new CodeSearchWindow();
            searchWindow.ShowDialog();
        }

        private void OnAuthenticatedNotice(Object sender, NotificationEventArgs e)
        {
            _logInWindow.Close();
        }

        private void DisplayLogIn()
        {
            _logInWindow = new LogIn.MainWindow();
            _logInWindow.ShowDialog(); 
        }

        private void OnSaveRequiredNotice(Object sender, NotificationEventArgs<bool, MessageBoxResult> e)
        {
            string messageBoxText = e.Message;
            string caption = "XERP Warning";
            MessageBoxButton button = MessageBoxButton.YesNoCancel;
            MessageBoxImage icon = MessageBoxImage.Warning;
            MessageBoxResult result = MessageBox.Show(messageBoxText, caption, button, icon);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    e.Completed(MessageBoxResult.Yes);
                    break;
                case MessageBoxResult.No:
                    e.Completed(MessageBoxResult.No);
                    break;
                case MessageBoxResult.Cancel:
                    e.Completed(MessageBoxResult.Cancel);
                    break;
            }
        }

        private void OnNewRecordNeededNotice(Object sender, NotificationEventArgs<bool, MessageBoxResult> e)
        {
            string messageBoxText = e.Message;
            string caption = "XERP Warning";
            MessageBoxButton button = MessageBoxButton.YesNoCancel;
            MessageBoxImage icon = MessageBoxImage.Warning;
            MessageBoxResult result = MessageBox.Show(messageBoxText, caption, button, icon);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    e.Completed(MessageBoxResult.Yes);
                    break;
                case MessageBoxResult.No:
                    e.Completed(MessageBoxResult.No);
                    break;
                case MessageBoxResult.Cancel:
                    e.Completed(MessageBoxResult.Cancel);
                    break;
            }
        }
        
        private void dgMain_PreviewKeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (_viewModel.AllowNew)
                {
                    _viewModel.NewExecutableProgramCommand("");
                    //set the first visible column to allow for edit w/o requireing a click to select it...
                    dgMain.CurrentCell = new DataGridCellInfo(
                    dgMain.Items[dgMain.Items.Count - 1], dgMain.Columns[0]);
                    dgMain.BeginEdit();

                }
                else
                {
                    MessageBox.Show("New ExecutableProgram Is Not Enabled...", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

            
        }
        //set data grid max length properties...
        private void DataGrid_Initialized(object sender, EventArgs e)
        {
            DataGrid datagrid = sender as DataGrid;
            if (datagrid == null) return;
            foreach (DataGridColumn dataGridColumn in datagrid.Columns)
            {
                if (dataGridColumn is DataGridTextColumn)
                {
                    DataGridTextColumn dataGridTextColumn = ((DataGridTextColumn)dataGridColumn);
                    Binding binding = (Binding)dataGridTextColumn.Binding;
                    int maxColumnLength;
                    if (!_viewModel.ExecutableProgramMaxFieldValueDictionary.TryGetValue(binding.Path.Path.ToString(), out maxColumnLength))
                        continue;
                    Style newStyle = new Style(typeof(TextBox), dataGridTextColumn.EditingElementStyle);
                    newStyle.Setters.Add(new Setter(TextBox.MaxLengthProperty, maxColumnLength));
                    dataGridTextColumn.EditingElementStyle = newStyle;
                }
            }
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {//set the focus as the control is loaded...
            txtKey.Focus();
        }
        //Hot keys Control S--Save Control N--New, Delete Key--Delete
        private void UserControl_PreviewKeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.N || e.Key == Key.S)
            {
                if (Keyboard.IsKeyDown(Key.RightCtrl) || Keyboard.IsKeyDown(Key.LeftCtrl))
                {
                    switch (e.Key)
                    {
                        case Key.N:
                            if (_viewModel.AllowNew)
                            {
                                _viewModel.NewExecutableProgramCommand("");
                                return;
                            }
                            //MessageBox.Show("New ExecutableProgram Is Not Enabled...", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                            break;
                        case Key.S:
                            if (mnuSave.IsEnabled)
                            {
                                WiggleToGhostField();
                                _viewModel.SaveCommand();
                                return;
                            }
                            //MessageBox.Show("Save Is Not Enabled...", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                            break;
                        default:
                            break;
                    }
                }
            }
        }

        private void dgMain_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _viewModel.SelectedExecutableProgramList = dgMain.SelectedItems;
            foreach (var item in dgMain.SelectedItems)
            {
               
            }
        }

        private void dgMainPasteRow_Click(object sender, RoutedEventArgs e)
        {//The columns may get moved so we need to predicate the column order before
            //dealing with the paste in the viewmodel...
            _viewModel.ExecutableProgramColumnMetaDataList = new List<ColumnMetaData>();
            foreach (DataGridColumn column in dgMain.Columns)
            {
                string s = column.SortMemberPath.ToString();
                int i = column.DisplayIndex;
                ColumnMetaData columnMetaData = new ColumnMetaData();
                columnMetaData.Name = column.SortMemberPath.ToString();
                columnMetaData.Order = column.DisplayIndex;
                _viewModel.ExecutableProgramColumnMetaDataList.Add(columnMetaData);
            }        
            _viewModel.PasteRowCommand();
        }

        private void dgMain_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            {
                if (_viewModel.AllowDelete)
                {
                    _viewModel.DeleteExecutableProgramCommand();
                    return;
                }
                //MessageBox.Show("Delete Is Not Enabled...", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }  
}
