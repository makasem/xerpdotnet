   M S B A M L   `   `   `  ����  SimpleMvvm-Wpf1    +XERP.Client.WPF.MainMenu.Views.MainMenuView   5      Esdk=http://schemas.microsoft.com/winfx/2006/xaml/presentation/sdk  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5
        � 	Resources  5         MenuTemplate �� ItemsSource �� Orientation �� Path��%�   &	        �� 5   
    68   �� *
Children+.R�5      �� $ 
Horizontal=�6   .+�5      �� ��6   �� $ DBImageAsImage�5      �� 5      ��6   �� *Name+5      5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��35 �6   6*   �� 5      $
��536* �6   6,   �� 5      $��28 �6   6*    � ColumnDefinitions 5   
   �� 5      $
��400* �6   6.   �� 5      $
��400* �6   6.   .+�5   
   �� $��1��6   $ 
Horizontal=�6%   $��Center=�6>   $��Stretch=�6[   .+�5       �� $��1��6   $��XERP Main Menu:��6(   $��16(�5!      $��0,0,0,0q�5"      $��19��6!   6/   5$      �� 5%   
   $��1��6   $��2��6%   $ 
Horizontal=�62   $��Right=�6K   $��Stretch=�6g   .+�5&      �� $��1��6   $��Current Company: ��6(   $��12(�5'      $��0,0,0,0q�5(      $��22��6!   6/   �� 5)      $��1��6   $��12(�5*      $��0,0,20,0q�5+      $��22��6"   ��5)   (   �� *GlobalCompanyID+5+   0   5,      o� 5-   
    o� 
IsMainMenu . $��10,2,2,2q�6!   $	��180��63   $
��Left=�6?   .@�5.      m� $��_Tools��6   m� 5/      $��_Actions��6   m� 50      $��_Help��6   51      R� 53   
   -   5        $��Stretch=�53      $��Stretch=�61   $��5q�6M   #��[  54      $��1��55   F   ��6   �� *TreeNestedMenuItemList+.  (System.Windows.Interactivity.Interaction   Triggers 58      /  )System.Windows.Interactivity.EventTrigger  59         	EventName$ MouseUp��6!   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5:      >  8Microsoft.Expression.Interactivity.Core.CallMethodAction  
   
MethodName$!
 TreeMenuItemSelectedCommand��5<         TargetObject 5;      �� 5<      5=      5?      �� 5A   
   $��1��6   $��0��6$   $��Right=�64   $��4��6P   
��� ���6Z   �� 5C   
   $��1��6   $��1��6   $��Stretch=�6/   $��Stretch=�6M   $��5q�6i    �� SelectionMode$ Single=�5E      ��5D      �� *DisplayedMenuItemList+ �� SelectedItem 5F      �� *SelectedDisplayedMenuItemList+��5G      �� 5H      .R�5I      �� $ 
Horizontal=�6!   .+�5J      �� ��6    �� *DBImageAsImage+6D   �� 5K      $��5q�6S   ��6$   �� $ Description� �� Mode$ TwoWay=�6S   5L      5M       5O        5P      $ MouseUp��6!   .	 5Q        $
 MenuItemSelectedCommand��5S       5R      �� 5S      5T      5V      5W      5X      