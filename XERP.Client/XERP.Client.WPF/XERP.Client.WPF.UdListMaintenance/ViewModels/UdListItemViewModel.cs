﻿using System;
using System.Windows;
using System.Collections.ObjectModel;
using System.Linq;
using System.Data.Services.Client;
using System.ComponentModel;
using System.Collections.Generic;
// Toolkit namespace
using SimpleMvvmToolkit;
//XERP Namespaces
using XERP.Domain.UdListDomain.Services;
using XERP.Domain.UdListDomain.UdListDataService;
//using XERP.Domain.UdListDomain.ClientModels;
using XERP.Domain.ClientModels;
using XERP.Client.Models;
//required for extension methods...
using ExtensionMethods;

namespace XERP.Client.WPF.UdListMaintenance.ViewModels
{
    public partial class MainMaintenanceViewModel : ViewModelBase<MainMaintenanceViewModel>
    {
        #region Initialization and Cleanup

        #endregion Initialization and Cleanup

        #region Notifications

        #endregion Notifications   

        #region Properties
        #region GeneralProperties
        //used to enable/disable rowcopy feature for main datagrid...
        private int _newUdListItemAutoId;
        private bool _udListItemDataGridIsActive;
        public bool UdListItemIsSelected
        {
            get { return _udListItemDataGridIsActive; }
            set
            {
                _udListItemDataGridIsActive = value;
                NotifyPropertyChanged(m => m.UdListItemIsSelected);
            }
        }

        private bool _allowRowCopyItem;
        public bool AllowRowCopyItem
        {
            get { return _allowRowCopyItem; }
            set
            {
                _allowRowCopyItem = value;
                NotifyPropertyChanged(m => m.AllowRowCopyItem);
            }
        }

        private bool _allowRowPasteItem;
        public bool AllowRowPasteItem
        {
            get { return _allowRowPasteItem; }
            set
            {
                _allowRowPasteItem = value;
                NotifyPropertyChanged(m => m.AllowRowPasteItem);
            }
        }

        private bool _allowNewItem;
        public bool AllowNewItem
        {
            get { return _allowNewItem; }
            set
            {
                _allowNewItem = value;
                NotifyPropertyChanged(m => m.AllowNewItem);
            }
        }

        private bool _allowDeleteItem;
        public bool AllowDeleteItem
        {
            get { return _allowDeleteItem; }
            set
            {
                _allowDeleteItem = value;
                NotifyPropertyChanged(m => m.AllowDeleteItem);
            }
        }

        private bool _allowEditItem;
        public bool AllowEditItem
        {
            get { return _allowEditItem; }
            set
            {
                _allowEditItem = value;
                NotifyPropertyChanged(m => m.AllowEditItem);
            }
        }
        #endregion GeneralProperties

        #region UdListItem Properties

        private UdListItem _selectedUdListItemMirror;
        public UdListItem SelectedUdListItemMirror
        {
            get { return _selectedUdListItemMirror; }
            set { _selectedUdListItemMirror = value; }
        }

        private System.Collections.IList _selectedUdListItemList;
        public System.Collections.IList SelectedUdListItemList
        {
            get { return _selectedUdListItemList; }
            set
            {
                if (_selectedUdListItem != value)
                {
                    _selectedUdListItemList = value;
                    NotifyPropertyChanged(m => m.SelectedUdListItemList);
                }
            }
        }

        private UdListItem _selectedUdListItem;
        public UdListItem SelectedUdListItem
        {
            get
            {
                return _selectedUdListItem;
            }
            set
            {
                if (_selectedUdListItem != value)
                {
                    _selectedUdListItem = value;
                    //we do a try catch supress as in some instance the UdListItemList is not instantiated...
                    try
                    {
                        if( SelectedUdList != null && SelectedUdList.UdListItems != null && SelectedUdList.UdListItems.Count > 0)
                        {//set the tree selection property that is bound by the list...
                            var udListItem = UdListList.Where(q => q.AutoID == SelectedUdList.AutoID).SingleOrDefault().UdListItems.
                                Where(q => q.AutoID == value.AutoID).SingleOrDefault();
                            //if the selection came from the UdListItem Datagrid we need to cordinate
                            //it to the same selected child in the treeview...
                            if(UdListItemIsSelected)
                                udListItem.IsSelected = true;
                        }
                    }
                    catch { }

                    //set the mirrored SelectedUdListItem to allow to track property changes w/o
                    //explicitly providing a property for each field...
                    SelectedUdListItemMirror = new UdListItem();
                    if (value != null)
                    {//default the PreviousKeyID... 
                        foreach (var prop in SelectedUdListItem.GetType().GetProperties())
                        {
                            SelectedUdListItemMirror.SetPropertyValue(prop.Name, SelectedUdListItem.GetPropertyValue(prop.Name));
                        }
                        SelectedUdListItemMirror.UdListItemID = _selectedUdListItem.UdListItemID;
                        NotifyPropertyChanged(m => m.SelectedUdListItem);

                        SelectedUdListItem.PropertyChanged += new PropertyChangedEventHandler(SelectedUdListItem_PropertyChanged);
                    }
                }
            }
        }

        private List<ColumnMetaData> _udListItemColumnMetaDataList;
        public List<ColumnMetaData> UdListItemColumnMetaDataList
        {
            get { return _udListItemColumnMetaDataList; }
            set
            {
                _udListItemColumnMetaDataList = value;
                NotifyPropertyChanged(m => m.UdListItemColumnMetaDataList);
            }
        }
        #endregion UdListItem Properties

        #region Validation Properties
        //we use this dictionary to bind all textbox maxLenght properties in the View...
        private Dictionary<string, int> _udListItemMaxFieldValueDictionary;
        public Dictionary<string, int> UdListItemMaxFieldValueDictionary //= new Dictionary<string, int>();
        {
            get
            {
                if (_udListItemMaxFieldValueDictionary != null)
                {
                    return _udListItemMaxFieldValueDictionary;
                }
                _udListItemMaxFieldValueDictionary = new Dictionary<string, int>();
                var metaData = _serviceAgent.GetMetaData("UdListItems");

                foreach (var data in metaData)
                {
                    if (data.ShortChar_1 == "String")
                    {
                        _udListItemMaxFieldValueDictionary.Add(data.Name.ToString(), (int)data.Int_1);
                    }
                }
                return _udListItemMaxFieldValueDictionary;
            }
        }
        #endregion Validation Properties
        #endregion Properties

        #region ViewModel Property Events
        private void SelectedUdListItem_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            //IsSelected and IsExpanded are not to be persisted we will igore them...
            if (e.PropertyName == "IsSelected" || 
                e.PropertyName == "IsExpanded" || 
                e.PropertyName == "IsValid" || 
                e.PropertyName == "NotValidMessage")
            {
                return;
            }
            
            object propertyChangedValue = SelectedUdListItem.GetPropertyValue(e.PropertyName);
            object prevPropertyValue = SelectedUdListItemMirror.GetPropertyValue(e.PropertyName);
            string propertyType = SelectedUdListItem.GetPropertyType(e.PropertyName);
            //in some instances the value is not really changing but yet it still is tripping property change..
            //This will ensure that the field has physically been modified...
            //As well when we revert back it constitutes a property change but they will be = and it will bypass the logic...
            bool objectsAreEqual;
            if (propertyChangedValue == null)
            {
                if (prevPropertyValue == null)
                {//both values are null
                    objectsAreEqual = true;
                }
                else
                {//only one value is null
                    objectsAreEqual = false;
                }
            }
            else
            {
                if (prevPropertyValue == null)
                {//only one value is null
                    objectsAreEqual = false;
                }
                else //both values are not null use .Equals...
                {
                    objectsAreEqual = propertyChangedValue.Equals(prevPropertyValue);
                }
            }
            if (!objectsAreEqual)
            {
                //Here we do property change validation if false is returned we will reset the value
                //Back to its mirrored value and return out of the property change w/o updating the repository...
                if (ItemPropertyChangeIsValid(e.PropertyName, propertyChangedValue, prevPropertyValue, propertyType))
                {
                    Update(SelectedUdListItem);
                    //set the mirrored objects field...
                    SelectedUdListItemMirror.SetPropertyValue(e.PropertyName, propertyChangedValue);
                    SelectedUdListItemMirror.IsValid = SelectedUdListItem.IsValid;
                    SelectedUdListItemMirror.NotValidMessage = SelectedUdListItem.NotValidMessage;
                }
                else
                {//revert back to its previous value... 
                    SelectedUdListItem.SetPropertyValue(e.PropertyName, prevPropertyValue);
                    SelectedUdListItem.IsValid = SelectedUdListItemMirror.IsValid;
                    SelectedUdListItem.NotValidMessage = SelectedUdListItemMirror.NotValidMessage;
                    return;
                }
            }
        }
        #endregion ViewModel Propertie's Events

        #region Methods
        private bool ItemPropertyChangeIsValid(string propertyName, object changedValue, object previousValue, string type)
        {
            string errorMessage = "";
            bool rBool = true;
            switch (propertyName)
            {
                case "UdListItemID":
                    rBool = UdListItemIsValid(SelectedUdListItem, _udListItemValidationProperties.UdListItemID, out errorMessage);

                    break;
                case "Name":
                    rBool = UdListItemIsValid(SelectedUdListItem, _udListItemValidationProperties.Description, out errorMessage);
                    
                    break;
            }
            if (rBool == false)
            {//here we give a specific error to the specific change
                NotifyMessage(errorMessage);

                SelectedUdListItem.IsValid = rBool;
            }
            else //check the enire rows validity...
            {//here we check the entire row for validity the property change may be valid
                //but we still do not know if the entire row is valid...
                SelectedUdListItem.IsValid = UdListItemIsValid(SelectedUdListItem, out errorMessage);  
            }
            SelectedUdListItem.NotValidMessage = errorMessage;
            return rBool;
        }
        
        private void SetAsEmptyItemSelection()
        {
            SelectedUdListItem = new UdListItem();
            AllowEditItem = false;
            AllowDeleteItem = false;
            AllowRowCopyItem = false;
        }

        #region Validation Methods
        //XERP Validation is done by the entire object or by Object property...
        //So we must be sure to add the validation in both places...
        private enum _udListItemValidationProperties
        {//these are the current properties that have validation on them...
            //if more field validation is required we add the field to the enum...
            UdListItemID,
            Description
        }

        //UdListItem Object.Property Scope Validation...
        private bool UdListItemIsValid(UdListItem udListItem, _udListItemValidationProperties validationProperties, out string errorMessage)
        {
            errorMessage = "";
            switch (validationProperties)
            {
                case _udListItemValidationProperties.UdListItemID:
                    //validate key
                    if (string.IsNullOrEmpty(udListItem.UdListItemID))
                    {
                        errorMessage = "ID Is Required.";
                        return false;
                    }

                    var count = UdListList.
                       Where(q => q.UdListID == udListItem.UdListID).Single().
                       UdListItems.
                       Where(x => x.UdListItemID == udListItem.UdListItemID).Count();
                    if (count > 1)
                    {
                        errorMessage = "UdListItem ID " + udListItem.UdListItemID + " Allready Exists...";
                        return false;
                    }

                    //if (UdListItemExists(udListItem.UdListItemID.ToString(), udListItem.AutoID))
                    if (UdListItemExists(udListItem.UdListID, udListItem.UdListItemID.ToString(), (int)udListItem.AutoID))
                    {
                        errorMessage = "UdListItem ID " + udListItem.UdListItemID + " Allready Exists...";
                        return false;
                    }
                   
                    break;
                case _udListItemValidationProperties.Description:
                    //validate Description
                    if (string.IsNullOrEmpty(udListItem.Description))
                    {
                        errorMessage = "Description Is Required.";
                        return false;
                    }
                    break;
            }
            return true;
        }
        //UdList Object Scope Validation validate entire object...
        private bool UdListItemIsValid(UdListItem udListItem, out string errorMessage)
        {
            //validate key
            errorMessage = "";
            if (string.IsNullOrEmpty(udListItem.UdListItemID))
            {
                errorMessage = "ID Is Required.";
                return false;
            }

            var count = UdListList.
                       Where(q => q.UdListID == udListItem.UdListID).Single().
                       UdListItems.
                       Where(x => x.UdListItemID == udListItem.UdListItemID).Count();
            if (count > 1)
            {
                errorMessage = "UdListItem ID " + udListItem.UdListItemID + " Allready Exists...";
                return false;
            }

            if (UdListItemExists(udListItem.UdListID, udListItem.UdListItemID.ToString(), (int)udListItem.AutoID))
            {
                errorMessage = "UdListItem ID " + udListItem.UdListItemID + " Allready Exists...";
                return false;
            }


            //validate Description
            if (string.IsNullOrEmpty(udListItem.Description))
            {
                errorMessage = "Description Is Required.";
                return false;
            }
            return true;
        }
        #endregion Validation Methods

        #region ServiceAgent Call Methods
        private EntityStates GetUdListItemState(UdListItem udListItem)
        {
            return _serviceAgent.GetUdListItemEntityState(udListItem);
        }

        #region UdListItem CRUD

        private List<UdListItem> GetUdListItems()
        {
            return SelectedUdList.UdListItems.ToList();
        }

        private bool UdListItemExists(string udListID, string udListItemID, int autoID)
        {
            return _serviceAgent.UdListItemExists(udListID, udListItemID, ClientSessionSingleton.Instance.CompanyID, autoID);
        }
        //udpate merely updates the repository a commit is required 
        //to commit it to the db...
        private bool Update(UdListItem udListItem)
        {
            _serviceAgent.UpdateUdListRepository(udListItem);
            Dirty = true;
            if (CommitIsAllowed())
            {
                AllowCommit = true;
                return true;
            }
            else
            {
                AllowCommit = false;
                return false;
            }
        }

        private bool Delete(UdListItem udListItem)
        {//deletes are done indenpendently of the repository as a delete will not commit 
            //dirty records it will simply just delete the record...
            _serviceAgent.DeleteFromUdListRepository(udListItem);
            return true;
        }

        private bool NewUdListItem(string udListItemID)
        {
            UdListItem udListItem = new UdListItem();
            _newUdListItemAutoId = _newUdListItemAutoId - 1;
            udListItem.AutoID = _newUdListItemAutoId;
            udListItem.UdListID = SelectedUdList.UdListID;
            udListItem.UdListItemID = udListItemID;
            udListItem.IsValid = false;
            udListItem.NotValidMessage = "New Record Key Field/s Required.";
            udListItem.CompanyID = ClientSessionSingleton.Instance.CompanyID;
            UdListList.Where(q => q.AutoID == SelectedUdList.AutoID).SingleOrDefault().UdListItems.Add(udListItem);
            _serviceAgent.AddToUdListRepository(udListItem);
            SelectedUdListItem = SelectedUdList.UdListItems.LastOrDefault();
            AllowEditItem = true;
            return true;
        }

        #endregion UdListItem CRUD
        #endregion ServiceAgent Call Methods
        #endregion Methods

        #region Commands
        public void ItemPasteRowCommand()
        {
            try
            {
                UdListItemColumnMetaDataList.Sort(delegate(ColumnMetaData c1, ColumnMetaData c2)
                { return c1.Order.CompareTo(c2.Order); });

                char[] rowSplitter = { '\r', '\n' };
                char[] columnSplitter = { '\t' };
                //get the text from clipboard
                IDataObject dataInClipboard = Clipboard.GetDataObject();
                string stringInClipboard = (string)dataInClipboard.GetData(DataFormats.Text);
                //split it into rows...
                string[] rowsInClipboard = stringInClipboard.Split(rowSplitter, StringSplitOptions.RemoveEmptyEntries);

                foreach (string row in rowsInClipboard)
                {
                    NewUdListItemCommand(""); //this will generate a new udList and set it as the selected udList...
                    //split row into cell values
                    string[] valuesInRow = row.Split(columnSplitter);
                    int i = 0;
                    foreach (string columnValue in valuesInRow)
                    {
                        SelectedUdListItem.SetPropertyValue(UdListItemColumnMetaDataList[i].Name, columnValue);
                        i++;
                    }
                }
            }
            catch (Exception ex)
            {
                NotifyMessage(ex.InnerException.ToString());
            }
        }

        public void DeleteItemCommand()
        {
            int i = 0;
            bool isFirstDelete = true;
            for (int j = SelectedUdListItemList.Count - 1; j >= 0; j--)
            {
                UdListItem udListItem = (UdListItem)SelectedUdListItemList[j];
                if (isFirstDelete)
                {//the result of this will be the record directly before the selected records...
                    i = SelectedUdList.UdListItems.IndexOf(udListItem) - SelectedUdList.UdListItems.Count;
                }

                Delete(udListItem);
                UdListList.Where(q => q.AutoID == SelectedUdList.AutoID).SingleOrDefault().UdListItems.Remove(udListItem);
            }

            if (UdListList != null && SelectedUdList != null && SelectedUdList.UdListItems.Count > 0)
            {
                //if they delete the first row...
                if (i < 0)
                {
                    i = 0;
                }
                //only allow commit for dirty validated records...
                SelectedUdListItem = SelectedUdList.UdListItems[i];
                if (Dirty)
                {
                    AllowCommit = CommitIsAllowed();
                }
                else
                {
                    AllowCommit = false;
                }
            }
            else
            {//only one record, deleting will result in no records...
                SetAsEmptySelection();
            }
        }

        public void NewUdListItemCommand()
        {
            NewUdListItem("");
            AllowCommit = false;
        }

        public void NewUdListItemCommand(string udListItemID)
        {
            NewUdListItem(udListItemID);
            if (string.IsNullOrEmpty(udListItemID))
            {//don't allow a save until a udListID is provided...
                AllowCommit = false;
            }
            {
                AllowCommit = CommitIsAllowed();
            }
        }

        #endregion Commands
        
        #region Helpers
        #endregion Helpers
    }
}

namespace ExtensionMethods
{
    public static partial class XERPExtensions
    {
        #region UdListItem Extensions
        public static object GetPropertyValue(this UdListItem myObj, string propertyName)
        {
            var propInfo = typeof(UdListItem).GetProperty(propertyName);

            if (propInfo != null)
            {
                return propInfo.GetValue(myObj, null);
            }
            else
            {
                return string.Empty;
            }
        }

        public static string GetPropertyType(this UdListItem myObj, string propertyName)
        {
            var propInfo = typeof(UdListItem).GetProperty(propertyName);

            if (propInfo != null)
            {
                return propInfo.PropertyType.Name.ToString();
            }
            else
            {
                return null;
            }
        }

        public static void SetPropertyValue(this UdListItem myObj, object propertyName, object propertyValue)
        {
            var propInfo = typeof(UdListItem).GetProperty((string)propertyName);

            if (propInfo != null)
            {
                propInfo.SetValue(myObj, propertyValue, null);
            }
        }
        #endregion UdListItem Extensions
    }
}