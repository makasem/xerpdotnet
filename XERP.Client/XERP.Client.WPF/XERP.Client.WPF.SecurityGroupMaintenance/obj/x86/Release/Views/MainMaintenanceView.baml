   M S B A M L   `   `   `  ���� ,  (XERP.Client.WPF.SecurityGroupMaintenanceH    BXERP.Client.WPF.SecurityGroupMaintenance.Views.MainMaintenanceView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  -   {���   �� Path$  FormIsEnabled�.���    BaseGrid#��[   � RowDefinitions �� $��50 ��� $
��550* � � ColumnDefinitions �� $	��156 ��� $
��422* �.+���   
BaseHeader#��[ $
��Left=�$��1��$%��Security Group Maintenance Form��$��13(�$��
138,10,0,5q���   BaseStackPanel#��[  �� Orientation$ Vertical=�$	��271��$��50��$��2��$
��Left=�$	��Top=�.+�o�   BaseMenu#��[  o� 
IsMainMenu . $��2��$	��250��$��20��$	��Top=�$
��Left=�.@�m�   BaseMenuItem#��[ $��_File��.@�m� #��[ $
��_New��.@�m� -   $��mnuNewSecurityGroup��#��[ $��_New SecurityGroup��{��� *
AllowNew+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ NewSecurityGroupCommand��	   TargetObject	 �� m� -   $��mnuSave��#��[ $��_Save��m� #��[ $��_Delete��.@�m� #��[ $��_Delete SecurityGroup��{��� *AllowDelete+   $ Click��.   $  DeleteSecurityGroupCommand��	 �� m� #��[ $��_Exit��
 m� Command$
 Close��m� #��[ $��_Edit��.@�m� #��[ $��_Clear��   $ Click��.   $ ClearCommand��	 �� m� #��[ $��_Refresh��   $ Click��.   $ RefreshCommand��	 �� m� #��[ $
��_Cut��$	
 Cut��m� #��[ $��_Copy��$

 Copy��m� #��[ $��_Paste��$
 Paste��m� #��[ $��_Tools��m� #��[ $��_Actions��m� #��[ $��_Help��o� #��[  . $	��270��$��30��-  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $	��Top=�$
��Left=���Z� .@�m�   AddNewMenuItem#��[ $��0q�.@�m� $��_New SecurityGroup��{��� *
AllowNew+   $ Click��.   $ NewSecurityGroupCommand��	 �� m� -   #��[ ���� -     
SaveButton#��[ m�   DeleteMenuItem#��[ $��0q�.@�m� #��[ $��_Delete SecurityGroup��{��� *AllowDelete+   $ Click��.   $  DeleteSecurityGroupCommand��	 �� m� #��[ ����   ClearButton#��[    $ Click��.   $ ClearCommand��	 �� m� #��[ ����  	 RefreshButton#��[	    $ Click��.   $ RefreshCommand��	 �� m� #��[ ����  
 	CutButton#��[
 $	��Cut��m� #��[ ����   
CopyButton#��[ $
��Copy��m� #��[ ����   PasteButton#��[ $��Paste����   BaseVerticalGridSplitter#��[ $��1��$��0����   BaseListBox#��[ $��1��$��0�� �� SelectionMode$ Single=����� *SecurityGroupList+ �� SelectedItem �� *SelectedSecurityGroup+���� .R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��16��$��16������  �� Triggers ��  �� Binding �� $  IsValid� �� Value Z� .a���  �� Property � �� �� Value$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 0.a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 1.a���  � ��$0 */XERP.Client;component/Resources/error.ico����  �� $  IsValid� 2.a���  � ��$0 */XERP.Client;component/Resources/flag2.png���� ���� $  SecurityGroupID��� $��0��$y�Hidden=����� $  IsValid���   BaseErrorBlock#��[ $
��Auto������ $  NotValidMessage��� -   $��tabctrlMain��  BaseTabControl#��[ $��1��$��1��.@��� -   $��	tabDetail��  BaseTabItem#��[ $��Detail��.��� #��[   �� $��46 ��� $
��657* � �� $	��171 ��� $
��246* �.+��� #��[ $��0��$��2��$��Stretch=�$��Stretch=�$ 
Horizontal=�.+���   
BaseButton#��[ $��Security Group...��$	��108��$��25��$��10q� .     $ Click��.   $ SearchCommand��	 �� �� -   $��txtKey��  BaseTextBox#��[ $	��251��$��20��   TabIndex$ 10������ $+  %SelectedSecurityGroup.SecurityGroupID� �� Mode$ TwoWay=� �� 	MaxLength �� *75SecurityGroupMaxFieldValueDictionary[SecurityGroupID]+�� #��[ $��Stretch=�$��Stretch=�$ Vertical=�$��1��$��0��.+���   BaseTextBlock#��[ $��Right=�$	��Top=�$��8q�Name:�� #��[ $��Right=�$	��Top=�$��8q�Description:�� #��[ $��Right=�$	��Top=�$��8q�Type:�� #��[ $��Right=�$	��Top=�$��8q�Code:�� #��[ $��Right=�$	��Top=�$��8q�	Active:�� #��[ $��Right=�$	��Top=�$��8q�Notes:�� -	   $��ghost��#��[ $��0��$��0�� .  �� #��[ $��1��$��1��$��Stretch=�$��Stretch=�$ Vertical=�{��� *	AllowEdit+.+��� $
��Left=�$	��Top=�$��5q�$	��250��$ 20��
�������
���iii����� $   SelectedSecurityGroup.Name�$ TwoWay=� �� TargetNullValue$  ��{��� *	AllowEdit+ �� *,*SecurityGroupMaxFieldValueDictionary[Name]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 30��
���iii����� $'  !SelectedSecurityGroup.Description�$ TwoWay=� �� *31SecurityGroupMaxFieldValueDictionary[Description]+��   BaseComboBox#��[ $
��Left=�$	��250��$��5q� �� DisplayMemberPath$
 Type�� �� SelectedValuePath$ SecurityGroupTypeID��$ 40��
���iii����� $  SecurityGroupTypeList�$ TwoWay=� �� SelectedValue �� $/  )SelectedSecurityGroup.SecurityGroupTypeID�$ TwoWay=� � ContextMenu ��   BaseContextMenu#��[ @�m� -
   #��[ $��Open Type Maintenance��m� #��[ $��Search Type��   $ Click��.   $ TypeSearchCommand��	 �� �� #��[ $
��Left=�$	��250��$��5q�$
 Code��$ SecurityGroupCodeID��$ 50��
���iii����� $  SecurityGroupCodeList�$ TwoWay=� �� $/  )SelectedSecurityGroup.SecurityGroupCodeID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Code Maintenance��m� #��[ $��Search Code��   $ Click��.   $ CodeSearchCommand��	 �� ��   BaseCheckBox#��[ $��8q�$ 60�� d� 	IsChecked �� *SelectedSecurityGroup.Active+�� #��[  �� AcceptsReturn .  �� TextWrapping$
 Wrap=�$
��Left=�$	��Top=�$��5q�$	��250��$ 70��
���iii�$��41������ $!  SelectedSecurityGroup.Notes�$ TwoWay=� �� *-+SecurityGroupMaxFieldValueDictionary[Notes]+�� -   $��tabList��#��[ $
��List��$��Stretch=�$��Stretch=� .  .��� #��[   �� $
��Auto ��� $	��37* ��� $
��354* �.+�&   System.Windows.Controls.DataGrid  -   $��dgMain��  BaseDataGrid#��[ $��2��$��1��   SelectionMode$ Extended=�   AutoGenerateColumns .  ���� *SecurityGroupList+$ TwoWay=�  �� UpdateSourceTrigger$  PropertyChanged=� �� *SelectedSecurityGroup+$ TwoWay=�$  PropertyChanged=� �� .@�m� $��
Copy Row/s��$

 Copy��{��� *AllowRowCopy+m� -   $��dgMainPasteRow��$��Paste Row/s��{��� *AllowRowPaste+!   Columns! 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn"   Header$" ID��#   Width5	  /System.Windows.Controls.DataGridLengthConverter$# *	 1
  +System.Windows.Controls.DataGridBoundColumn$ 
  Binding$ �� *SecurityGroupID+$ TwoWay=�$  	LostFocus=�  $
" Name��$# *	 $ �� *Name+$ TwoWay=�$  	LostFocus=�  $" Description��$# *	 $ �� *Description+$ TwoWay=�$  	LostFocus=�4  .System.Windows.Controls.DataGridComboBoxColumn  $
" Type��$# *	 %   DisplayMemberPath$
% Type��&   SelectedValuePath$& SecurityGroupTypeID��'   SelectedValueBinding' �� *SecurityGroupTypeID+$ TwoWay=�$  	LostFocus=�(   ElementStyle( �� ) �� 
TargetType") ��.���  � �� �� * �� RelativeSource* �� *FindAncestor++ �� AncestorType"+ >�$'  !DataContext.SecurityGroupTypeList�$ TwoWay=�$  	LostFocus=�,   EditingElementStyle, �� ") ��.���  � �� �� * �� *FindAncestor+"+ >�$'  !DataContext.SecurityGroupTypeList�$ TwoWay=�$  	LostFocus=�  $
" Code��$# *	 $
% Code��$& SecurityGroupCodeID��' �� *SecurityGroupCodeID+$ TwoWay=�$  	LostFocus=�( �� ") ��.���  � �� �� * �� *FindAncestor+"+ >�$'  !DataContext.SecurityGroupCodeList�$ TwoWay=�, �� ") ��.���  � �� �� * �� *FindAncestor+"+ >�$'  !DataContext.SecurityGroupCodeList�$ TwoWay=�4  .System.Windows.Controls.DataGridCheckBoxColumn  $" Active��$# 50	 $ �� *Active+$ TwoWay=�$  PropertyChanged=�  $" Notes��$# *	 $ �� *Notes+$ TwoWay=�$  	LostFocus=��� -   $��ghost2��#��[ $��2��$��0��$��0�� .  