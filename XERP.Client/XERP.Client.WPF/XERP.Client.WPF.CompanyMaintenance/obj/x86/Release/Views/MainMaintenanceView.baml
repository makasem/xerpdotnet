   M S B A M L   `   `   `  ���� J  FXERP.Client.WPF, Version=1.1.1.1, Culture=neutral, PublicKeyToken=nullZ>clr-namespace:XERP.Client.WPF.Helpers;assembly=XERP.Client.WPFXERP.Client.WPF.Helpers  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem & "XERP.Client.WPF.CompanyMaintenanceB   <XERP.Client.WPF.CompanyMaintenance.Views.MainMaintenanceView   Ihelper>clr-namespace:XERP.Client.WPF.Helpers;assembly=XERP.Client.WPF  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6sys&clr-namespace:System;assembly=mscorlib     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  -   {���   �� Path$  FormIsEnabled�.���    BaseGrid#��[   � 	Resources (   "XERP.Client.WPF.Helpers.Converters  CustomIntToStringConverter   EmptyStringValue��%   &	         $ 0�� � RowDefinitions �� $��50 ��� $
��550* � � ColumnDefinitions �� $	��156 ��� $
��422* �.+���   
BaseHeader#��[ $
��Left=�$��1��$��Company Maintenance Form��$��13(�$��
138,10,0,5q���   BaseStackPanel#��[  �� Orientation$ Vertical=�$	��271��$��50��$��2��$
��Left=�$	��Top=�.+�o�   BaseMenu#��[  o� 
IsMainMenu . $��2��$	��250��$��20��$	��Top=�$
��Left=�.@�m�   BaseMenuItem#��[ $��_File��.@�m� #��[ $
��_New��.@�m� -   $��mnuNewCompany��#��[ $��_New Company��{��� *
AllowNew+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 >  8Microsoft.Expression.Interactivity.Core.CallMethodAction  
   
MethodName$
 NewCompanyCommand��   TargetObject �� m� -   $��mnuSave��#��[ $��_Save��m� #��[ $��_Delete��.@�m� #��[ $��_Delete Company��{��� *AllowDelete+   $ Click��.	   $
 DeleteCompanyCommand�� �� m� #��[ $��_Exit�� m� Command$ Close��m� #��[ $��_Edit��.@�m� #��[ $��_Clear��   $ Click��.	   $
 ClearCommand�� �� m� #��[ $��_Refresh��   $ Click��.	   $
 RefreshCommand�� �� m� #��[ $
��_Cut��$	 Cut��m� #��[ $��_Copy��$
 Copy��m� #��[ $��_Paste��$ Paste��m� #��[ $��_Tools��m� #��[ $��_Actions��m� #��[ $��_Help��o� #��[  . $	��270��$��30��-  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $	��Top=�$
��Left=���Z� .@�m�   AddNewMenuItem#��[ $��0q�.@�m� $��_New Company��{��� *
AllowNew+   $ Click��.	   $
 NewCompanyCommand�� �� m� -   #��[ ���� -     
SaveButton#��[ m�   DeleteMenuItem#��[ $��0q�.@�m� #��[ $��_Delete Company��{��� *AllowDelete+   $ Click��.	   $
 DeleteCompanyCommand�� �� m� #��[ ����  	 ClearButton#��[	    $ Click��.	   $
 ClearCommand�� �� m� #��[ ����  
 RefreshButton#��[
    $ Click��.	   $
 RefreshCommand�� �� m� #��[ ����   	CutButton#��[ $	��Cut��m� #��[ ����   
CopyButton#��[ $
��Copy��m� #��[ ����   PasteButton#��[ $��Paste����   BaseVerticalGridSplitter#��[ $��1��$��0����   BaseListBox#��[ $��1��$��0�� �� SelectionMode$ Single=����� *CompanyList+ �� SelectedItem �� *SelectedCompany+���� .R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��16��$��16������  �� Triggers ��  �� Binding �� $  IsValid� �� Value Z� .a���  �� Property � �� �� Value$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 0.a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 1.a���  � ��$0 */XERP.Client;component/Resources/error.ico����  �� $  IsValid� 2.a���  � ��$0 */XERP.Client;component/Resources/flag2.png���� ���� $  	CompanyID��� $��0��$y�Hidden=����� $  IsValid���   BaseErrorBlock#��[ $
��Auto������ $  NotValidMessage��� -   $��tabctrlMain��  BaseTabControl#��[ $��1��$��1��.@��� -   $��	tabDetail��  BaseTabItem#��[ $��Detail��.���� .��� #��[   �� $��46 ��� $
��657* � �� $	��172 ��� $
��246* �.+��� #��[ $��0��$��2��$��Stretch=�$��Stretch=�$ 
Horizontal=�.+���   
BaseButton#��[ $��
Company...��$	��100��$��25��$��10q� .     $ Click��.	   $
 SearchCommand�� �� �� -   $��txtKey��  BaseTextBox#��[ $	��150��$��20��   TabIndex$ 10������ $  SelectedCompany.CompanyID� �� Mode$ TwoWay=� �� 	MaxLength �� *+)CompanyMaxFieldValueDictionary[CompanyID]+�� #��[ $��Stretch=�$��Stretch=�$ Vertical=�$��1��$��0��.+���   BaseTextBlock#��[ $��Right=�$	��Top=�$��8q�Name:�� #��[ $��Right=�$	��Top=�$��8q�Description:�� #��[ $��Right=�$	��Top=�$��8q�Type:�� #��[ $��Right=�$	��Top=�$��8q�Code:�� #��[ $��Right=�$	��Top=�$��8q�StateTaxCode:�� #��[ $��Right=�$	��Top=�$��8q�TaxRegionCode:�� #��[ $��Right=�$	��Top=�$��8q�CurrentFiscalYear:�� #��[ $��Right=�$	��Top=�$��8q�DefaultExecutablePath:�� #��[ $��Right=�$	��Top=�$��8q�	Address1:�� #��[ $��Right=�$	��Top=�$��8q�	Address2:�� #��[ $��Right=�$	��Top=�$��8q�	Address3:�� #��[ $��Right=�$	��Top=�$��8q�City:�� #��[ $��Right=�$	��Top=�$��8q�State:�� #��[ $��Right=�$	��Top=�$��8q�Zip:�� #��[ $��Right=�$	��Top=�$��8q�
Country:�� #��[ $��Right=�$	��Top=�$��8q�	PhoneNum:�� #��[ $��Right=�$	��Top=�$��8q�
PhoneNum2:�� #��[ $��Right=�$	��Top=�$��8q�	FaxNum:�� #��[ $��Right=�$	��Top=�$��8q�Email:�� #��[ $��Right=�$	��Top=�$��8q�	Email2:�� #��[ $��Right=�$	��Top=�$��8q�	Active:�� #��[ $��Right=�$	��Top=�$��8q�Notes:�� -	   $��ghost��#��[ $��0��$��0�� .  �� #��[ $��1��$��1��$��Stretch=�$��Stretch=�$ Vertical=�{��� *	AllowEdit+.+��� $
��Left=�$	��Top=�$��5q�$	��250��$ 20��
�������
���iii����� $  SelectedCompany.Name�$ TwoWay=� �� TargetNullValue$  ��{��� *	AllowEdit+ �� *&$CompanyMaxFieldValueDictionary[Name]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 30��
���iii����� $!  SelectedCompany.Description�$ TwoWay=� �� *-+CompanyMaxFieldValueDictionary[Description]+��   BaseComboBox#��[ $
��Left=�$	��250��$��5q� �� DisplayMemberPath$
 Type�� �� SelectedValuePath$ CompanyTypeID��$ 40��
���iii����� $  CompanyTypeList�$ TwoWay=� �� SelectedValue �� $#  SelectedCompany.CompanyTypeID�$ TwoWay=� � ContextMenu ��   BaseContextMenu#��[ @�m� -
   #��[ $��Open Type Maintenance��m� #��[ $��Search Type��   $ Click��.	   $
 TypeSearchCommand�� �� �� #��[ $
��Left=�$	��250��$��5q�$
 Code��$ CompanyCodeID��$ 50��
���iii����� $  CompanyCodeList�$ TwoWay=� �� $#  SelectedCompany.CompanyCodeID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Code Maintenance��m� #��[ $��Search Code��   $ Click��.	   $
 CodeSearchCommand�� �� �� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 60��
���iii����� $"  SelectedCompany.StateTaxCode�$ TwoWay=� �� *.,CompanyMaxFieldValueDictionary[StateTaxCode]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 70��
���iii����� $#  SelectedCompany.TaxRegionCode�$ TwoWay=� �� */-CompanyMaxFieldValueDictionary[TaxRegionCode]+�� #��[ 2   ,XERP.Client.WPF.Helpers.NumericTextBoxHelper   IsNumericOnly . $
��Left=�$	��Top=�$��5q�$	��250��$ 80��
���iii����� $'  !SelectedCompany.CurrentFiscalYear�$ TwoWay=��� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 90��
���iii����� $+  %SelectedCompany.DefaultExecutablePath�$ TwoWay=� �� *75CompanyMaxFieldValueDictionary[DefaultExecutablePath]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 100��
���iii����� $  SelectedCompany.Address1�$ TwoWay=� �� **(CompanyMaxFieldValueDictionary[Address1]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 110��
���iii����� $  SelectedCompany.Address2�$ TwoWay=� �� **(CompanyMaxFieldValueDictionary[Address2]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 120��
���iii����� $  SelectedCompany.Address3�$ TwoWay=� �� **(CompanyMaxFieldValueDictionary[Address3]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 130��
���iii����� $  SelectedCompany.City�$ TwoWay=� �� *&$CompanyMaxFieldValueDictionary[City]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 140��
���iii����� $  SelectedCompany.State�$ TwoWay=� �� *'%CompanyMaxFieldValueDictionary[State]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 150��
���iii����� $  SelectedCompany.Zip�$ TwoWay=� �� *%#CompanyMaxFieldValueDictionary[Zip]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 160��
���iii����� $  SelectedCompany.Country�$ TwoWay=� �� *)'CompanyMaxFieldValueDictionary[Country]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 170��
���iii����� $  SelectedCompany.PhoneNum�$ TwoWay=� �� **(CompanyMaxFieldValueDictionary[PhoneNum]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 180��
���iii����� $  SelectedCompany.PhoneNum2�$ TwoWay=� �� *+)CompanyMaxFieldValueDictionary[PhoneNum2]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 190��
���iii����� $  SelectedCompany.FaxNum�$ TwoWay=� �� *(&CompanyMaxFieldValueDictionary[FaxNum]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 200��
���iii����� $  SelectedCompany.Email�$ TwoWay=� �� *'%CompanyMaxFieldValueDictionary[Email]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$	 210��
���iii����� $  SelectedCompany.Email2�$ TwoWay=� �� *(&CompanyMaxFieldValueDictionary[Email2]+��   BaseCheckBox#��[ $��8q�$ 60�� d� 	IsChecked �� *SelectedCompany.Active+�� #��[  �� AcceptsReturn .   �� TextWrapping$
  Wrap=�$
��Left=�$	��Top=�$��5q�$	��250��$	 220��
���iii�$��41������ $  SelectedCompany.Notes�$ TwoWay=� �� *'%CompanyMaxFieldValueDictionary[Notes]+�� -   $��tabList��#��[ $
��List��$��Stretch=�$��Stretch=� .  .��� #��[   �� $
��Auto ��� $	��37* ��� $
��354* �.+�&   System.Windows.Controls.DataGrid  -   $��dgMain��  BaseDataGrid#��[ $��2��$��1��!   SelectionMode$! Extended=�"   AutoGenerateColumns" .  ���� *CompanyList+$ TwoWay=�# �� UpdateSourceTrigger$# PropertyChanged=� �� *SelectedCompany+$ TwoWay=�$# PropertyChanged=� �� .@�m� $��
Copy Row/s��$
 Copy��{��� *AllowRowCopy+m� -   $��dgMainPasteRow��$��Paste Row/s��{��� *AllowRowPaste+$   Columns$ 0	  *System.Windows.Controls.DataGridTextColumn	  ,
  &System.Windows.Controls.DataGridColumn% 
  Header$% ID��& 
  Width5  /System.Windows.Controls.DataGridLengthConverter$& 80 1  +System.Windows.Controls.DataGridBoundColumn'   Binding' �� *	CompanyID+$ TwoWay=�$# 	LostFocus=�	  $
% Name��$& 80 ' �� *Name+$ TwoWay=�$# 	LostFocus=�	  $% Description��$	& 100 ' �� *Description+$ TwoWay=�$# 	LostFocus=�4  .System.Windows.Controls.DataGridComboBoxColumn  $
% Type��$& 80 (   DisplayMemberPath$
( Type��)   SelectedValuePath$) CompanyTypeID��*   SelectedValueBinding* �� *CompanyTypeID+$ TwoWay=�$# 	LostFocus=�+   ElementStyle+ �� , �� 
TargetType", ��.���  � �� �� - �� RelativeSource- �� *FindAncestor+. �� AncestorType". >�$!  DataContext.CompanyTypeList�$ TwoWay=�$# 	LostFocus=�/   EditingElementStyle/ �� ", ��.���  � �� �� - �� *FindAncestor+". >�$!  DataContext.CompanyTypeList�$ TwoWay=�$# 	LostFocus=�  $
% Code��$& 80 $
( Code��$) CompanyCodeID��* �� *CompanyCodeID+$ TwoWay=�$# 	LostFocus=�+ �� ", ��.���  � �� �� - �� *FindAncestor+". >�$!  DataContext.CompanyCodeList�$ TwoWay=�/ �� ", ��.���  � �� �� - �� *FindAncestor+". >�$!  DataContext.CompanyCodeList�$ TwoWay=�	  $% StateTaxCode��$& 90 ' �� *StateTaxCode+$ TwoWay=�$# 	LostFocus=�	  $% TaxRegionCode��$& 90 ' �� *TaxRegionCode+$ TwoWay=�$# 	LostFocus=�	  $% CurrentFiscalYear��$& 90 ' �� *CurrentFiscalYear+$ TwoWay=�$# 	LostFocus=�0 �� 	Converter#0 [ 	  $% DfltExePath��$	& 100 ' �� *DefaultExecutablePath+$ TwoWay=�$# 	LostFocus=�	  $% Address1��$	& 100 ' �� *
Address1+$ TwoWay=�$# 	LostFocus=�	  $% Address2��$	& 100 ' �� *
Address2+$ TwoWay=�$# 	LostFocus=�	  $% Address3��$	& 100 ' �� *
Address3+$ TwoWay=�$# 	LostFocus=�	  $
% City��$& 80 ' �� *City+$ TwoWay=�$# 	LostFocus=�	  $% State��$& 80 ' �� *State+$ TwoWay=�$# 	LostFocus=�	  $	% Zip��$& 80 ' �� *Zip+$ TwoWay=�$# 	LostFocus=�	  $% Country��$& 80 ' �� *	Country+$ TwoWay=�$# 	LostFocus=�	  $% PhoneNum��$& 80 ' �� *
PhoneNum+$ TwoWay=�$# 	LostFocus=�	  $% 	PhoneNum2��$& 80 ' �� *	PhoneNum2+$ TwoWay=�$# 	LostFocus=�	  $% FaxNum��$& 80 ' �� *FaxNum+$ TwoWay=�$# 	LostFocus=�	  $% Email��$	& 100 ' �� *Email+$ TwoWay=�$# 	LostFocus=�	  $% Email2��$	& 100 ' �� *Email2+$ TwoWay=�$# 	LostFocus=�4  .System.Windows.Controls.DataGridCheckBoxColumn  $% Active��$& 50 ' �� *Active+$ TwoWay=�$# PropertyChanged=�	  $% Notes��$	& 100 ' �� *Notes+$ TwoWay=�$# 	LostFocus=��� -   $��ghost2��#��[ $��2��$��0��$��0�� .  