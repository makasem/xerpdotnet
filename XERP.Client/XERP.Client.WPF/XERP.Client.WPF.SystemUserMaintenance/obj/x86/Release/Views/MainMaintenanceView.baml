   M S B A M L   `   `   `  ���� )  %XERP.Client.WPF.SystemUserMaintenanceE    ?XERP.Client.WPF.SystemUserMaintenance.Views.MainMaintenanceView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  -   {���   �� Path$  FormIsEnabled�.���    BaseGrid#��[   � RowDefinitions �� $��50 ��� $
��550* � � ColumnDefinitions �� $	��156 ��� $
��422* �.+���   
BaseHeader#��[ $
��Left=�$��1��$"��System User Maintenance Form��$��13(�$��
138,10,0,5q���   BaseStackPanel#��[  �� Orientation$ Vertical=�$	��271��$��50��$��2��$
��Left=�$	��Top=�.+�o�   BaseMenu#��[  o� 
IsMainMenu . $��2��$	��250��$��20��$	��Top=�$
��Left=�.@�m�   BaseMenuItem#��[ $��_File��.@�m� #��[ $
��_New��.@�m� -   $��mnuNewSystemUser��#��[ $��_New SystemUser��{��� *
AllowNew+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ NewSystemUserCommand��	   TargetObject	 �� m� -   $��mnuSave��#��[ $��_Save��m� #��[ $��_Delete��.@�m� #��[ $��_Delete SystemUser��{��� *AllowDelete+   $ Click��.   $ DeleteSystemUserCommand��	 �� m� #��[ $��_Exit��
 m� Command$
 Close��m� #��[ $��_Edit��.@�m� #��[ $��_Clear��   $ Click��.   $ ClearCommand��	 �� m� #��[ $��_Refresh��   $ Click��.   $ RefreshCommand��	 �� m� #��[ $
��_Cut��$	
 Cut��m� #��[ $��_Copy��$

 Copy��m� #��[ $��_Paste��$
 Paste��m� #��[ $��_Tools��m� #��[ $��_Actions��m� #��[ $��_Help��o� #��[  . $	��270��$��30��-  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $	��Top=�$
��Left=���Z� .@�m�   AddNewMenuItem#��[ $��0q�.@�m� $��_New SystemUser��{��� *
AllowNew+   $ Click��.   $ NewSystemUserCommand��	 �� m� -   #��[ ���� -     
SaveButton#��[ m�   DeleteMenuItem#��[ $��0q�.@�m� #��[ $��_Delete SystemUser��{��� *AllowDelete+   $ Click��.   $ DeleteSystemUserCommand��	 �� m� #��[ ����   ClearButton#��[    $ Click��.   $ ClearCommand��	 �� m� #��[ ����  	 RefreshButton#��[	    $ Click��.   $ RefreshCommand��	 �� m� #��[ ����  
 	CutButton#��[
 $	��Cut��m� #��[ ����   
CopyButton#��[ $
��Copy��m� #��[ ����   PasteButton#��[ $��Paste����   BaseVerticalGridSplitter#��[ $��1��$��0����   BaseListBox#��[ $��1��$��0�� �� SelectionMode$ Single=����� *SystemUserList+ �� SelectedItem �� *SelectedSystemUser+���� .R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��16��$��16������  �� Triggers ��  �� Binding �� $  IsValid� �� Value Z� .a���  �� Property � �� �� Value$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 0.a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 1.a���  � ��$0 */XERP.Client;component/Resources/error.ico����  �� $  IsValid� 2.a���  � ��$0 */XERP.Client;component/Resources/flag2.png���� ���� $  SystemUserID��� $��0��$y�Hidden=����� $  IsValid���   BaseErrorBlock#��[ $
��Auto������ $  NotValidMessage��� -   $��tabctrlMain��  BaseTabControl#��[ $��1��$��1��.@��� -   $��	tabDetail��  BaseTabItem#��[ $��Detail��.��� #��[   �� $��46 ��� $
��657* � �� $	��171 ��� $
��246* �.+��� #��[ $��0��$��2��$��Stretch=�$��Stretch=�$ 
Horizontal=�.+���   
BaseButton#��[ $��System User...��$	��108��$��25��$��10q� .     $ Click��.   $ SearchCommand��	 �� �� -   $��txtKey��  BaseTextBox#��[ $	��251��$��20��   TabIndex$ 10������ $%  SelectedSystemUser.SystemUserID� �� Mode$ TwoWay=� �� 	MaxLength �� *1/SystemUserMaxFieldValueDictionary[SystemUserID]+�� #��[ $��Stretch=�$��Stretch=�$ Vertical=�$��1��$��0��.+���   BaseTextBlock#��[ $��Right=�$	��Top=�$��8q�Name:�� #��[ $��Right=�$	��Top=�$��8q�Type:�� #��[ $��Right=�$	��Top=�$��8q�Code:�� #��[ $��Right=�$	��Top=�$��8q�	Active:�� #��[ $��Right=�$	��Top=�$��8q�	Password:�� #��[ $��Right=�$	��Top=�$��8q�Password Expired:�� #��[ $��Right=�$	��Top=�$��8q�Password Expires On:�� #��[ $��Right=�$	��Top=�$��8q�System Manager:�� #��[ $��Right=�$	��Top=�$��8q�Email Address:�� #��[ $��Right=�$	��Top=�$��8q�Default Company:�� #��[ $��Right=�$	��Top=�$��8q�Default Plant:�� #��[ $��Right=�$	��Top=�$��8q�
Address:�� -	   $��ghost��#��[ $��0��$��0�� .  �� #��[ $��1��$��1��$��Stretch=�$��Stretch=�$ Vertical=�{��� *	AllowEdit+.+��� $
��Left=�$	��Top=�$��5q�$	��250��$ 20��
�������
���iii����� $  SelectedSystemUser.Name�$ TwoWay=� �� TargetNullValue$  ��{��� *	AllowEdit+ �� *)'SystemUserMaxFieldValueDictionary[Name]+��   BaseComboBox#��[ $
��Left=�$	��250��$��5q� �� DisplayMemberPath$
 Type�� �� SelectedValuePath$ SystemUserTypeID��$ 40��
���iii����� $  SystemUserTypeList�$ TwoWay=� �� SelectedValue �� $)  #SelectedSystemUser.SystemUserTypeID�$ TwoWay=� � ContextMenu ��   BaseContextMenu#��[ @�m� -
   #��[ $��Open Type Maintenance��m� #��[ $��Search Type��   $ Click��.   $ TypeSearchCommand��	 �� �� #��[ $
��Left=�$	��250��$��5q�$
 Code��$ SystemUserCodeID��$ 50��
���iii����� $  SystemUserCodeList�$ TwoWay=� �� $)  #SelectedSystemUser.SystemUserCodeID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Code Maintenance��m� #��[ $��Search Code��   $ Click��.   $ CodeSearchCommand��	 �� ��   BaseCheckBox#��[ $��9q�$ 60�� d� 	IsChecked �� *SelectedSystemUser.Active+�� $
��Left=�$	��Top=�$��5q�$	��250��$ 80��
�������
���iii����� $!  SelectedSystemUser.Password�$ TwoWay=�$  ��{��� *	AllowEdit+ �� *-+SystemUserMaxFieldValueDictionary[Password]+�� #��[ $��9q�$	 100�� �� *$"SelectedSystemUser.PasswordExpired+(  "System.Windows.Controls.DatePicker  $
��Left=�$	��250��$��5q�$	 120��$��25��   SelectedDate �� $*  $SelectedSystemUser.PasswordExpiresOn��� #��[ $��9q�$	 140�� �� *" SelectedSystemUser.SystemManager+�� $
��Left=�$	��Top=�$��5q�$	��250��$	 150��
�������
���iii����� $%  SelectedSystemUser.EmailAddress�$ TwoWay=�$  ��{��� *	AllowEdit+ �� *1/SystemUserMaxFieldValueDictionary[EmailAddress]+�� #��[ $
��Left=�$	��250��$��5q�$
 Name��$ 	CompanyID��$	 160��
���iii����� $  CompanyList�$ TwoWay=� �� $)  #SelectedSystemUser.DefaultCompanyID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Company Maintenance���� #��[ $
��Left=�$	��250��$��5q�$
 Name��$ PlantID��$	 180��
���iii����� $  	PlantList�$ TwoWay=� �� $'  !SelectedSystemUser.DefaultPlantID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Plant Maintenance���� #��[ $
��Left=�$	��250��$��5q�$
 Name��$ 	AddressID��$	 180��
���iii����� $  AddressList�$ TwoWay=� �� $"  SelectedSystemUser.AddressID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Address Maintenance���� -   $��tabList��#��[ $
��List��$��Stretch=�$��Stretch=� .  .��� #��[   �� $
��Auto ��� $	��37* ��� $
��354* �.+�&   System.Windows.Controls.DataGrid  -   $��dgMain��  BaseDataGrid#��[ $��2��$��1��   SelectionMode$ Extended=�   AutoGenerateColumns .  ���� *SystemUserList+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� *SelectedSystemUser+$ TwoWay=�$ PropertyChanged=� �� .@�m� $��
Copy Row/s��$

 Copy��{��� *AllowRowCopy+m� -   $��dgMainPasteRow��$��Paste Row/s��{��� *AllowRowPaste+    Columns  0  *System.Windows.Controls.DataGridTextColumn  ,	  &System.Windows.Controls.DataGridColumn! 	  Header$! ID��" 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$" *
 1  +System.Windows.Controls.DataGridBoundColumn#   Binding# �� *SystemUserID+$ TwoWay=�$ 	LostFocus=�  $
! Name��$" *
 # �� *Name+$ TwoWay=�$ 	LostFocus=�4  .System.Windows.Controls.DataGridComboBoxColumn  $
! Type��$" *
 $   DisplayMemberPath$
$ Type��%   SelectedValuePath$% SystemUserTypeID��&   SelectedValueBinding& �� *SystemUserTypeID+$ TwoWay=�$ 	LostFocus=�'   ElementStyle' �� ( �� 
TargetType"( ��.���  � �� �� ) �� RelativeSource) �� *FindAncestor+* �� AncestorType"* >�$$  DataContext.SystemUserTypeList�$ TwoWay=�$ 	LostFocus=�+   EditingElementStyle+ �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$$  DataContext.SystemUserTypeList�$ TwoWay=�$ 	LostFocus=�  $
! Code��$" *
 $
$ Code��$% SystemUserCodeID��& �� *SystemUserCodeID+$ TwoWay=�$ 	LostFocus=�' �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$$  DataContext.SystemUserCodeList�$ TwoWay=�+ �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$$  DataContext.SystemUserCodeList�$ TwoWay=�4  .System.Windows.Controls.DataGridCheckBoxColumn  $! Active��$" 50
 # �� *Active+$ TwoWay=�$ PropertyChanged=�  $! PassWord��$" *
 # �� *
PassWord+$ TwoWay=�$ 	LostFocus=�  $! Expired��$" 50
 # �� *PasswordExpired+$ TwoWay=�$ PropertyChanged=�4  .System.Windows.Controls.DataGridTemplateColumn  $! 
Expires On��$" *
 ,   CellTemplate, �� .R��� ���� $  PasswordExpiresOn�- �� StringFormat$- {0:d}��.   CellEditingTemplate. �� .R�   �� $  PasswordExpiresOn�$ TwoWay=�/ �� ValidatesOnExceptions/ . 0 �� NotifyOnValidationError0 .   $! Manager��$" 50
 # �� *SystemManager+$ TwoWay=�$ PropertyChanged=�  $! Email��$" *
 # �� *EmailAddress+$ TwoWay=�$ 	LostFocus=�  $! Default Company��$" *
 $
$ Name��$% 	CompanyID��& �� *	CompanyID+$ TwoWay=�$ 	LostFocus=�' �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$  DataContext.CompanyList�$ TwoWay=�$ 	LostFocus=�+ �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$  DataContext.CompanyList�$ TwoWay=�$ 	LostFocus=�  $! Default Plant��$" *
 $
$ Name��$% PlantID��& �� *	PlantID+$ TwoWay=�$ 	LostFocus=�' �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$  DataContext.PlantList�$ TwoWay=�$ 	LostFocus=�+ �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$  DataContext.PlantList�$ TwoWay=�$ 	LostFocus=�  $! Address��$" *
 $
$ Name��$% 	AddressID��& �� *	AddressID+$ TwoWay=�$ 	LostFocus=�' �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$  DataContext.AddressList�$ TwoWay=�$ 	LostFocus=�+ �� "( ��.���  � �� �� ) �� *FindAncestor+"* >�$  DataContext.AddressList�$ TwoWay=�$ 	LostFocus=��� -   $��ghost2��#��[ $��2��$��0��$��0�� .  �� -   $��tabSecurityRole��#��[ $��User Security��.��� #��[   �� $��20 ��� $
��657* ��� $��20 � �� $	��250 ��� $��50 ��� $
��200* �.+��� $��0��$��0��$��Center=�$��Available Security Groups��$
��Bold"��� -   $ ��lbxAvailableSecurityGroups��$��1��$��0��$ Multiple=����� *AvailableSecurityGroupList+���� .R��� $ Vertical=�.+��� ���� $
  Name��� $��0��$��2��$��Center=�$��Assigned Security Groups��$
��Bold"��� -   $��lbxAssignedSecurityGroups��$��1��$��2��$ Multiple=�$��Normal"����� *AssignedSecurityGroupList+���� .R��� $ Vertical=�.+��� ���� $
  Name��� $ Vertical=�$��1��$��1��$��Center=�.+��� -   $ ��btnAssignAllSecurityGroups��$��Wingdings 3)�$��uu��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(�{��� *AllowDelete+   $ Click��.   $$ AssignAllSecurityGroupsCommand��	 �� �� -   $%��btnAssignSelectedSecurityGroups��$��Wingdings 3)�$��u��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(�{��� *AllowDelete+�� -   $%��btnRemoveSelectedSecurityGroups��$��Wingdings 3)�$��t��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(�{��� *AllowDelete+�� -   $ ��btnRemoveAllSecurityGroups��$��Wingdings 3)�$��tt��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(�{��� *AllowDelete+   $ Click��.   $$ RemoveAllSecurityGroupsCommand��	 �� 