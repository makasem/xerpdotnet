   M S B A M L   `   `   `  ���� )  %XERP.Client.WPF.SystemUserMaintenanceE    ?XERP.Client.WPF.SystemUserMaintenance.Views.CodeMaintenanceView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  -   {���   �� Path$  FormIsEnabled�.���    BaseGrid#��[   � RowDefinitions �� $��50 ��� $
��550* � � ColumnDefinitions �� $	��156 ��� $
��422* �.+���   
BaseHeader#��[ $
��Left=�$��1��$'��!System User Code Maintenance Form��$��
138,10,0,5q���   BaseStackPanel#��[  �� Orientation$ Vertical=�$	��271��$��50��$��2��$
��Left=�$	��Top=�.+�o�   BaseMenu#��[  o� 
IsMainMenu . $��2��$	��250��$��20��$	��Top=�$
��Left=�.@�m�   BaseMenuItem#��[ $��_File��.@�m� #��[ $
��_New��.@�m� -   $��mnuNewSystemUserCode��#��[ $��_New SystemUser Code��{��� *
AllowNew+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ NewSystemUserCodeCommand��	   TargetObject	 �� m� -   $��mnuSave��#��[ $��_Save��m� #��[ $��_Delete��.@�m� #��[ $��_Delete SystemUser Code��{��� *AllowDelete+   $ Click��.   $! DeleteSystemUserCodeCommand��	 �� m� #��[ $��_Exit��
 m� Command$
 Close��m� #��[ $��_Edit��.@�m� #��[ $��_Clear��   $ Click��.   $ ClearCommand��	 �� m� #��[ $��_Refresh��   $ Click��.   $ RefreshCommand��	 �� m� #��[ $
��_Cut��$	
 Cut��m� #��[ $��_Copy��$

 Copy��m� #��[ $��_Paste��$
 Paste��m� #��[ $��_Tools��m� #��[ $��_Actions��m� #��[ $��_Help��o� #��[  . $	��270��$��30��-  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $	��Top=�$
��Left=���Z� .@�m�   AddNewMenuItem#��[ $��0q�.@�m� $��_New SystemUser Code��{��� *
AllowNew+   $ Click��.   $ NewSystemUserCodeCommand��	 �� m� -   #��[ ���� -     
SaveButton#��[ m�   DeleteMenuItem#��[ $��0q�.@�m� #��[ $��_Delete SystemUser Code��{��� *AllowDelete+   $ Click��.   $! DeleteSystemUserCodeCommand��	 �� m� #��[ ����   ClearButton#��[    $ Click��.   $ ClearCommand��	 �� m� #��[ ����  	 RefreshButton#��[	    $ Click��.   $ RefreshCommand��	 �� m� #��[ ����  
 	CutButton#��[
 $	��Cut��m� #��[ ����   
CopyButton#��[ $
��Copy��m� #��[ ����   PasteButton#��[ $��Paste����   BaseVerticalGridSplitter#��[ $��1��$��0����   BaseListBox#��[ $��1��$��0�� �� SelectionMode$ Single=����� *SystemUserCodeList+ �� SelectedItem �� *SelectedSystemUserCode+���� .R��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��16��$��16������  �� Triggers ��  �� Binding �� $  IsValid� �� Value Z� .a���  �� Property � �� �� Value$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 0.a���  � ��$0 */XERP.Client;component/Resources/valid.png����  �� $  IsValid� 1.a���  � ��$0 */XERP.Client;component/Resources/error.ico����  �� $  IsValid� 2.a���  � ��$0 */XERP.Client;component/Resources/flag2.png���� ���� $  SystemUserCodeID��� $��0��$y�Hidden=����� $  IsValid���   BaseErrorBlock#��[ $
��Auto������ $  NotValidMessage��� -   $��tabctrlMain��  BaseTabControl#��[ $��1��$��1��.@��� -   $��	tabDetail��  BaseTabItem#��[ $��Detail��.��� #��[   �� $��46 ��� $
��657* � �� $	��171 ��� $
��246* �.+��� #��[ $��0��$��2��$��Stretch=�$��Stretch=�$ 
Horizontal=�.+���   
BaseButton#��[ $��System User Code...��$	��145��$��25��$��10q� .     $ Click��.   $ SearchCommand��	 �� �� -   $��txtKey��  BaseTextBox#��[ $	��210��$��20��   TabIndex$ 10������ $-  'SelectedSystemUserCode.SystemUserCodeID� �� Mode$ TwoWay=� �� 	MaxLength �� *97SystemUserCodeMaxFieldValueDictionary[SystemUserCodeID]+�� #��[ $��Stretch=�$��Stretch=�$ Vertical=�$��1��$��0��.+���   BaseTextBlock#��[ $��Right=�$	��Top=�$��8q�Code:�� #��[ $��Right=�$	��Top=�$��8q�Description:�� -	   $��ghost��#��[ $��0��$��0�� .  �� #��[ $��1��$��1��$��Stretch=�$��Stretch=�$ Vertical=�{��� *	AllowEdit+.+��� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 20��
�������
���iii����� $!  SelectedSystemUserCode.Code�$ TwoWay=�{��� *	AllowEdit+ �� *-+SystemUserCodeMaxFieldValueDictionary[Code]+�� #��[ $
��Left=�$	��Top=�$��5q�$	��250��$ 30��
���iii����� $(  "SelectedSystemUserCode.Description�$ TwoWay=�{��� *	AllowEdit+ �� *42SystemUserCodeMaxFieldValueDictionary[Description]+�� -
   $��tabList��#��[ $
��List��$��Stretch=�$��Stretch=� .  .��� #��[   �� $
��Auto ��� $	��37* ��� $
��354* �.+�&   System.Windows.Controls.DataGrid  -   $��dgMain��  BaseDataGrid#��[ $��2��$��1��   SelectionMode$ Extended=�   AutoGenerateColumns .  ���� *SystemUserCodeList+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� *SelectedSystemUserCode+$ TwoWay=�$ PropertyChanged=� � ContextMenu �� .@�m� $��
Copy Row/s��$

 Copy��{��� *AllowRowCopy+m� -   $��dgMainPasteRow��$��Paste Row/s��{��� *AllowRowPaste+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID��   Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding �� *SystemUserCodeID+$ TwoWay=�$ 	LostFocus=�  $
 Name��$ *	  �� *Code+$ TwoWay=�$ 	LostFocus=�  $ Description��$ *	  �� *Description+$ TwoWay=�$ 	LostFocus=��� -   $��ghost2��#��[ $��2��$��0��$��0�� .  