   M S B A M L   `   `   `  ���� J  FXERP.Client.WPF, Version=1.1.1.1, Culture=neutral, PublicKeyToken=nullZ>clr-namespace:XERP.Client.WPF.Helpers;assembly=XERP.Client.WPFXERP.Client.WPF.Helpers  Y UXERP.Domain.MenuSecurityDomain, Version=1.1.1.1, Culture=neutral, PublicKeyToken=null�aclr-namespace:XERP.Domain.MenuSecurityDomain.ClientModels;assembly=XERP.Domain.MenuSecurityDomain+XERP.Domain.MenuSecurityDomain.ClientModels ' #XERP.Client.WPF.MenuItemMaintenanceC   =XERP.Client.WPF.MenuItemMaintenance.Views.MainMaintenanceView   Ihelper>clr-namespace:XERP.Client.WPF.Helpers;assembly=XERP.Client.WPF  ldomainaclr-namespace:XERP.Domain.MenuSecurityDomain.ClientModels;assembly=XERP.Domain.MenuSecurityDomain  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  -   {���   �� Path$  FormIsEnabled� � 	Resources    MenuTemplate �� DataType@  :XERP.Domain.MenuSecurityDomain.ClientModels.NestedMenuItem �� ItemsSource �� Mode �� Orientation �� Triggers �� Binding �� Value	 �� Property
 �� Value  BaseErrorBlock��%*  &	        7  �� "   �� *
Children+$ TwoWay=�.R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� ���� $  DBImageAsImage�$ TwoWay=��� $��16��$��16������  ��  �� $  IsValid�$ TwoWay=� Z� .a��� 	 � ��$0
 */XERP.Client;component/Resources/valid.png����  �� $  IsValid�$ TwoWay=� 0.a��� 	 � ��$0
 */XERP.Client;component/Resources/valid.png����  �� $  IsValid�$ TwoWay=� 1.a��� 	 � ��$0
 */XERP.Client;component/Resources/error.ico����  �� $  IsValid�$ TwoWay=� 2.a��� 	 � ��$0
 */XERP.Client;component/Resources/flag2.png���� ���� $
  Name�$ TwoWay=��� $��5��$y�Hidden=����� $  IsValid�$ TwoWay=��� 8��  $
��Auto������ $  NotValidMessage�$ TwoWay=�.���   BaseGrid#��[  � RowDefinitions �� $��50 ��� $
��550* � � ColumnDefinitions �� $	��156 ��� $
��422* �.+���   
BaseHeader#��[ $
��Left=�$��1��$ ��Menu Item Maintenance Form��$��13(�$��
138,10,0,5q���   BaseStackPanel#��[ $ Vertical=�$	��271��$��50��$��2��$
��Left=�$	��Top=�.+�o�   BaseMenu#��[  o� 
IsMainMenu . $��2��$	��250��$��20��$	��Top=�$
��Left=�.@�m�   BaseMenuItem#��[ $��_File��.@�m� #��[ $
��_New��.@�m� -   $��mnuNewMenuItem��#��[ $��_New MenuItem��{��� *
AllowNew+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ NewMenuItemCommand��   TargetObject �� m� -   $��mnuSave��#��[ $��_Save��m� #��[ $��_Delete��.@�m� #��[ $��_Delete MenuItem��{��� *AllowDelete+   $ Click��.   $ DeleteMenuItemCommand�� �� m� #��[ $��_Exit�� m� Command$ Close��m� #��[ $��_Edit��.@�m� #��[ $��_Refresh��   $ Click��.   $ RefreshCommand�� �� m� #��[ $
��_Cut��$	 Cut��m� #��[ $��_Copy��$
 Copy��m� #��[ $��_Paste��$ Paste��m� #��[ $��_Tools��m� #��[ $��_Actions��m� #��[ $��_Help��o� #��[  . $	��270��$��30��-  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $	��Top=�$
��Left=���Z� .@�m�   AddNewMenuItem#��[ $��0q�.@�m� $��_New MenuItem��{��� *
AllowNew+   $ Click��.   $ NewMenuItemCommand�� �� m� -   #��[ ���� -     
SaveButton#��[ m�  	 DeleteMenuItem#��[	 $��0q�.@�m� #��[ $��_Delete MenuItem��{��� *AllowDelete+   $ Click��.   $ DeleteMenuItemCommand�� �� m� #��[ ����  
 ClearButton#��[
 {�.  m� #��[ ����   RefreshButton#��[ {�.     $ Click��.   $ RefreshCommand�� �� m� #��[ ����   	CutButton#��[ $	��Cut��m� #��[ ����   
CopyButton#��[ $
��Copy��m� #��[ ����   PasteButton#��[ $��Paste����   BaseVerticalGridSplitter#��[ $��1��$��0��.   (XERP.Client.WPF.Helpers.ExtendedTreeView  -   $��tvMain��$��Stretch=�$��Stretch=�$��5q�$��1��#��[  ���� *TreeNestedMenuItemList+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   SelectedItem_ �� $  SelectedMenuItem�$ TwoWay=�$ PropertyChanged=�  �� 
TargetType��%l   'Q�       �� " Q�.��� 	 �@Q�
IsSelected
 �� $  
IsSelected�$ TwoWay=�$ PropertyChanged=��� -   $��tabctrlMain��  BaseTabControl#��[ $��1��$��1��.@��� -   $��	tabDetail��  BaseTabItem#��[ $��Detail��.��� #��[  �� $��20 ��� $
��657* � �� $	��171 ��� $
��246* �.+��� #��[ $��0��$��2��$��Stretch=�$��Stretch=�$ 
Horizontal=��� #��[ $��Stretch=�$��Stretch=�$ Vertical=�$��1��$��0��.+���   BaseTextBlock#��[ $��Right=�$	��Top=�$��8q�ID:�� #��[ $��Right=�$	��Top=�$��8q�Name:�� #��[ $��Right=�$	��Top=�$��8q�Description:�� #��[ $��Right=�$	��Top=�$��8q�Type:�� #��[ $��Right=�$	��Top=�$��8q�Code:�� #��[ $��Right=�$	��Top=�$��8q�	Active:�� #��[ $��Right=�$	��Top=�$��8q�
Menu Icon:�� #��[ $��Right=�$	��Top=�$��8q�Display Order:�� #��[ $��Right=�$	��Top=�$��8q�Executable:�� #��[ $��Right=�$	��Top=�$��8q�Executable Program ID:�� #��[ $��Right=�$	��Top=�$��8q�
Hide Menu:�� #��[ $��Right=�$	��Top=�$��8q�
Allow All:�� -	   $��ghost��  BaseTextBox#��[ $��0��$��0�� .  �� #��[ $��1��$��1��$��Stretch=�$��Stretch=�$ Vertical=�{��� *	AllowEdit+.+��� #��[ $
��Left=�$	��Top=�$��5q�$	��250��   TabIndex$ 10��
�������
���iii����� $!  SelectedMenuItem.MenuItemID�$ TwoWay=� �� TargetNullValue$  ��{��� *	AllowEdit+ �� 	MaxLength �� *-+MenuItemMaxFieldValueDictionary[MenuItemID]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 20��
�������
���iii����� $  SelectedMenuItem.Name�$ TwoWay=�$  ��{��� *	AllowEdit+ �� *'%MenuItemMaxFieldValueDictionary[Name]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 30��
���iii����� $"  SelectedMenuItem.Description�$ TwoWay=� �� *.,MenuItemMaxFieldValueDictionary[Description]+.����   BaseComboBox#��[ $
��Left=�$	��250��$��5q� �� DisplayMemberPath$
 Type�� �� SelectedValuePath$ MenuItemTypeID��$ 40��
���iii����� $  MenuItemTypeList�$ TwoWay=� �� SelectedValue �� $%  SelectedMenuItem.MenuItemTypeID�$ TwoWay=� � ContextMenu ��   BaseContextMenu#��[ @�m� -
   #��[ $��Open Type Maintenance��m� #��[ $��Search Type��   $ Click��.   $ TypeSearchCommand�� �� �� #��[ $
��Left=�$	��250��$��5q�$
 Code��$ MenuItemCodeID��$ 50��
���iii����� $  MenuItemCodeList�$ TwoWay=� �� $%  SelectedMenuItem.MenuItemCodeID�$ TwoWay=� �� #��[ @�m� -   #��[ $��Open Code Maintenance��m� #��[ $��Search Code��   $ Click��.   $ CodeSearchCommand�� �� ��   BaseCheckBox#��[ $��8q�$ 60�� d� 	IsChecked �� *SelectedMenuItem.Active+�� #��[ $
��Left=�$	��250��$��5q�$ Description��$ ImageID��$ 70��
���iii����� $  DBStroredImageList�$ TwoWay=� �� $  SelectedMenuItem.ImageID�$ TwoWay=� �� #��[ @�m� -   #��[ $ ��Open Menu Icon Maintenance���� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 20��$ 80��
���iii����� $#  SelectedMenuItem.DisplayOrder�$ TwoWay=��� #��[ $��8q�$ 90�� �� *SelectedMenuItem.Executable+�� #��[ $
��Left=�$	��250��$��5q�$
 Name��$ ExecutableProgramID��$	 100��
���iii����� $  ExecutableProgramList�$ TwoWay=� �� $*  $SelectedMenuItem.ExecutableProgramID�$ TwoWay=� �� #��[ @�m� -   #��[ $)��#Open Executable Program Maintenance���� #��[ $��8q�$	 110�� �� *SelectedMenuItem.HideMenu+�� #��[ $��8q�$	 120�� �� *SelectedMenuItem.AllowAll+�� -   $��tabSecurityRole��#��[ $��Menu Security��.��� #��[  �� $��20 ��� $
��657* ��� $��20 � �� $	��250 ��� $��50 ��� $
��200* �.+��� $��0��$��0��$��Center=�$��Available Security Groups��$
��Bold"��� -   $ ��lbxAvailableSecurityGroups��$��1��$��0��  �� SelectionMode$  Multiple=����� *AvailableSecurityGroupList+���� .R��� $ Vertical=�.+��� ���� $
  Name��� $��0��$��2��$��Center=�$��Assigned Security Groups��$
��Bold"��� -   $��lbxAssignedSecurityGroups��$��1��$��2��$  Multiple=�$��Normal"����� *AssignedSecurityGroupList+���� .R��� $ Vertical=�.+��� ���� $
  Name��� $ Vertical=�$��1��$��1��$��Center=�.+��� -   $ ��btnAssignAllSecurityGroups��$��Wingdings 3)�$��uu��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(�   $ Click��.   $$ AssignAllSecurityGroupsCommand�� �� �� -   $%��btnAssignSelectedSecurityGroups��$��Wingdings 3)�$��u��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(��� -   $%��btnRemoveSelectedSecurityGroups��$��Wingdings 3)�$��t��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(��� -   $ ��btnRemoveAllSecurityGroups��$��Wingdings 3)�$��tt��$��	5,10,5,10q�$��30�����	#FF003C74$
��Bold"�$��15(�   $ Click��.   $$ RemoveAllSecurityGroupsCommand�� �� 