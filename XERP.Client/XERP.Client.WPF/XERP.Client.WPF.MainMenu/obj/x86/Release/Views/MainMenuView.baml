   M S B A M L   `   `   `  ����   SimpleMvvm-Wpf1    +XERP.Client.WPF.MainMenu.Views.MainMenuView   Esdk=http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions    � 	Resources     MenuTemplate �� ItemsSource �� Orientation �� Path��%{   &	        ��  �� *
Children+.R��� $ 
Horizontal=�.+��� ���� $ DBImageAsImage��� ���� *Name+.���  � RowDefinitions �� $��35 ��� $
��536* ��� $��28 � � ColumnDefinitions �� $
��400* ��� $
��400* �.+��� $��1��$ 
Horizontal=�$��Center=�$��Stretch=�.+��� $��1��$��XERP Main Menu:��$��16(�$��0,0,0,0q�$��19���� $��1��$��2��$ 
Horizontal=�$��Right=�$��Stretch=�.+��� $��1��$��Current Company: ��$��12(�$��0,0,0,0q�$��22���� $��1��$��12(�$��0,0,20,0q�$��22������ *GlobalCompanyID+o�  o� 
IsMainMenu . $��10,2,2,2q�$	��180��$
��Left=�.@�m� $��_Tools��m� $��_Actions��m� $��_Help��R� -   $��Stretch=�$��Stretch=�$��5q�#��[  $��1������ *TreeNestedMenuItemList+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseUp��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 >  8Microsoft.Expression.Interactivity.Core.CallMethodAction  
   
MethodName$!
 TreeMenuItemSelectedCommand��   TargetObject �� �� $��1��$��0��$��Right=�$��4��
��� ����� $��1��$��1��$��Stretch=�$��Stretch=�$��5q� �� SelectionMode$ Single=����� *DisplayedMenuItemList+ �� SelectedItem �� *SelectedDisplayedMenuItemList+���� .R��� $ 
Horizontal=�.+��� ���� *DBImageAsImage+�� $��5q����� $ Description� �� Mode$ TwoWay=�   $ MouseUp��.	   $
 MenuItemSelectedCommand�� �� 