   M S B A M L   `   `   `  ���� J  FXERP.Client.WPF, Version=1.1.1.1, Culture=neutral, PublicKeyToken=nullZ>clr-namespace:XERP.Client.WPF.Helpers;assembly=XERP.Client.WPFXERP.Client.WPF.Helpers  \ XXERP.Client.WPF.UdListMaintenance, Version=1.1.1.1, Culture=neutral, PublicKeyToken=null�`clr-namespace:XERP.Client.WPF.UdListMaintenance.Views;assembly=XERP.Client.WPF.UdListMaintenance'XERP.Client.WPF.UdListMaintenance.Views A   ;XERP.Client.WPF.UdListMaintenance.Views.MainMaintenanceView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Qhelper>clr-namespace:XERP.Client.WPF.Helpers;assembly=XERP.Client.WPF     nv`clr-namespace:XERP.Client.WPF.UdListMaintenance.Views;assembly=XERP.Client.WPF.UdListMaintenance     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  -   {���   �� Path$  FormIsEnabled�.���    BaseGrid#��[   � RowDefinitions �� $��50 ��� $
��550* � � ColumnDefinitions �� $	��156 ��� $
��422* �.+���   
BaseHeader#��[ $
��Left=�$��1��$��UdList Maintenance Form��$��13(�$��
138,10,0,5q���   BaseStackPanel#��[  �� Orientation$ Vertical=�$	��271��$��50��$��2��$
��Left=�$	��Top=�.+�o�   BaseMenu#��[  o� 
IsMainMenu . $��2��$	��250��$��20��$	��Top=�$
��Left=�.@�m�   BaseMenuItem#��[ $��_File��.@�m� #��[ $
��_New��.@�m� -   $��mnuNewUdList��#��[ $��_New UdList��{��� *
AllowNew+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ NewUdListCommand��	   TargetObject	 �� m� -   $��mnuNewUdItemList��#��[ $��_New UdItemList��{��� *AllowNewItem+   $ Click��.   $ NewUdListItemCommand��	 �� m� -   $��mnuSave��#��[ $��_Save��m� #��[ $��_Delete��.@�m� #��[ $��_Delete UdList��{��� *AllowDelete+   $ Click��.   $ DeleteCommand��	 �� m� #��[ $��_Delete UdListItem��{��� *AllowDeleteUdListItem+   $ Click��.   $ DeleteUdListItemCommand��	 �� m� #��[ $��_Exit��
 m� Command$
 Close��m� #��[ $��_Edit��.@�m� #��[ $��_Clear��   $ Click��.   $ ClearCommand��	 �� m� #��[ $��_Refresh��   $ Click��.   $ RefreshCommand��	 �� m� #��[ $
��_Cut��$	
 Cut��m� #��[ $��_Copy��$

 Copy��m� #��[ $��_Paste��$
 Paste��m� #��[ $��_Tools��m� #��[ $��_Actions��m� #��[ $��_Help��o� #��[  . $	��270��$��30��-  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $	��Top=�$
��Left=���Z� .@�m�   AddNewMenuItem#��[ $��0q�.@�m� $��_New UdList��{��� *
AllowNew+   $ Click��.   $ NewUdListCommand��	 �� m� -   $��_New UdListItem��{��� *AllowNewItem+   $ Click��.   $ NewUdListItemCommand��	 �� m� #��[ ���� -     
SaveButton#��[ m�   DeleteMenuItem#��[ $��0q�.@�m� #��[ $��_Delete UdList��{��� *AllowDelete+   $ Click��.   $ DeleteUdListCommand��	 �� m� #��[ $��_Delete UdListItem��{��� *AllowDeleteUdListItem+   $ Click��.   $ DeleteUdListItemCommand��	 �� m� #��[ ����   ClearButton#��[    $ Click��.   $ ClearCommand��	 �� m� #��[ ����  	 RefreshButton#��[	    $ Click��.   $ RefreshCommand��	 �� m� #��[ ����  
 	CutButton#��[
 $	��Cut��m� #��[ ����   
CopyButton#��[ $
��Copy��m� #��[ ����   PasteButton#��[ $��Paste����   BaseVerticalGridSplitter#��[ $��1��$��0��.   (XERP.Client.WPF.Helpers.ExtendedTreeView  -   $��tvMain��$��Stretch=�$��Stretch=�$��5q�$��1������ *
UdListList+   SelectedItem_ �� $  SelectedTreeItem� �� Mode$ TwoWay=� �� NotifyOnSourceUpdated .  � 	Resources  �� 
TargetType �� Property �� Value��%V   'Q�       �� " Q�.���  �@Q�
IsSelected �� $  
IsSelected�$ TwoWay=�����  �� ItemsSource �� $  UdListItems�.R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��16��$��16������  �� Triggers ��  �� Binding �� $  IsValid� �� Value Z� .a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 0.a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 1.a���  � ��$0 */XERP.Client;component/Resources/error.ico����  �� $  IsValid� 2.a���  � ��$0 */XERP.Client;component/Resources/flag2.png���� ���� $  UdListID��� $��0��$y�Hidden=����� $  IsValid���   BaseErrorBlock#��[ $
��Auto������ $  NotValidMessage� �� ItemTemplate �� .R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��16��$��16������  ��  �� $  IsValid� Z� .a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 0.a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 1.a���  � ��$0 */XERP.Client;component/Resources/error.ico����  �� $  IsValid� 2.a���  � ��$0 */XERP.Client;component/Resources/flag2.png���� ���� $  UdListItemID��� $��0��$y�Hidden=����� $  IsValid��� #��[ $
��Auto������ $  NotValidMessage��� -   $��tabctrlMain��  BaseTabControl#��[ $��1��$��1��.@��� -	   $��	tabDetail��  BaseTabItem#��[ $��Detail��.��� #��[   �� $��46 ��� $
��657* � �� $	��171 ��� $
��246* �.+��� #��[ $��0��$��2��$��Stretch=�$��Stretch=�$ 
Horizontal=�.+���   
BaseButton#��[ $��	UdList...��$	��108��$��25��$��10q� .     $ Click��.   $ SearchCommand��	 �� �� -
   $��txtKey��  BaseTextBox#��[ $	��251��$��20��   TabIndex$ 10������ $  SelectedUdList.UdListID�$ TwoWay=� �� 	MaxLength �� *)'UdListMaxFieldValueDictionary[UdListID]+�� #��[ $��Stretch=�$��Stretch=�$ Vertical=�$��1��$��0��.+���   BaseTextBlock#��[ $��Right=�$	��Top=�$��8q�Name:�� #��[ $��Right=�$	��Top=�$��8q�Description:�� -   $��ghost��#��[ $��0��$��0�� .  �� #��[ $��1��$��1��$��Stretch=�$��Stretch=�$ Vertical=�{��� *	AllowEdit+.+��� $
��Left=�$	��Top=�$��5q�$	��250��$ 20��
�������
���iii����� $  SelectedUdList.Name�$ TwoWay=� �� TargetNullValue$  ��{��� *	AllowEdit+ �� *%#UdListMaxFieldValueDictionary[Name]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 30��
���iii����� $   SelectedUdList.Description�$ TwoWay=� �� *,*UdListMaxFieldValueDictionary[Description]+�� -   $��tabList��#��[ $
��List��$��Stretch=�$��Stretch=� .  .��� #��[   �� $
��Auto ��� $
��Auto ��� $	��28* ��� $
��405* �.+�&   System.Windows.Controls.DataGrid  -   $��dgMain��  BaseDataGrid#��[ $��2��$��2��   SelectionMode$ Extended=�   AutoGenerateColumns .  $��2q����� *
UdListList+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem �� *SelectedUdList+$ TwoWay=�$ PropertyChanged=� � ContextMenu �� .@�m� $��
Copy Row/s��$

 Copy��{��� *AllowRowCopy+m� -   $��dgMainPasteRow��$��Paste Row/s��{��� *AllowRowPaste+    Columns  0  *System.Windows.Controls.DataGridTextColumn  ,	  &System.Windows.Controls.DataGridColumn! 	  Header$! ID��" 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$" *
 1  +System.Windows.Controls.DataGridBoundColumn#   Binding# �� *
UdListID+$ TwoWay=�$ 	LostFocus=�  $
! Name��$" *
 # �� *Name+$ TwoWay=�$ 	LostFocus=�  $! Description��$" *
 # �� *Description+$ TwoWay=�$ 	LostFocus=��� -   $��ghost2��#��[ $��3��$��0��$��0�� .  �� -   $��tabItems��#��[ $��Items��$��Stretch=�$��Stretch=� .  .��a5clr-namespace:XERP.Client.WPF.UdListMaintenance.Views'XERP.Client.WPF.UdListMaintenance.Views <  6XERP.Client.WPF.UdListMaintenance.Views.UdListItemView  >my5clr-namespace:XERP.Client.WPF.UdListMaintenance.Views  