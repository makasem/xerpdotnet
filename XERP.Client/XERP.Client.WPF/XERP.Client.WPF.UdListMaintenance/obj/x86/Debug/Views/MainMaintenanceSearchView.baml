   M S B A M L   `   `   `  ����%  !XERP.Client.WPF.UdListMaintenanceG    AXERP.Client.WPF.UdListMaintenance.Views.MainMaintenanceSearchView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5      {�5	      ��   �� Path$  FormIsEnabled�.��5
      �    BaseGrid#��[  6    � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $
��119* �6   �� 5      $
��196* �6   �� 5      $	��32* �6    � ColumnDefinitions 5   
   �� 5      $
��116* �6   �� 5      $
��226* �6   �� 5      $
��158* �6   .+�5   
   ��   BaseHorizontalGridSplitter#��[ 6   $��0��6K   $��3��6X   $��2��5      $��Stretch=�6(   �� 5   
     
BaseHeader#��[ 6   $��2��68   $��Center=�6L   $��5q�5      UdList Search6.   �� 5   
     BaseStackPanel#��[ 6   $��1��6=   $��Stretch=�5      $��Stretch=�63    �� Orientation$ Vertical=�6O   .+�5      ��   BaseTextBlock#��[ 6   $��Right=�5      $	��Top=�64   $��8q�6L   Name:6^   �� 5      #��[ 6   $��Right=�5      $	��Top=�64   $��8q�6L   Description:6e   5       �� 5!   
   #��[ 6   $��1��6=   $��1��6J   $��Stretch=�5"      $��Stretch=�63   $ Vertical=�6O   .+�5#      ��   BaseTextBox#��[ 6   $��5q�6;   $	��250��6F   $
��Left=�6R   ��5$   "   �� $  SearchObject.Name��� 5%      #��[ 6   $��5q�6;   $	��250��6F   $
��Left=�6R   ��5&   "   �� $  SearchObject.Description�5'      �� 5(   
   #��[ 6   $��2��6=   $��1��6M   $��Stretch=�5)      $��Stretch=�63   $ Vertical=�6O   .+�5*      ��   
BaseButton#��[ 6   $��Search��69   $��23��6J   $��75��6W   $��5q�6c   .  (System.Windows.Interactivity.Interaction   Triggers 5+      /  )System.Windows.Interactivity.EventTrigger  5,         	EventName$ Click��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5-      >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ SearchCommand��5/         TargetObject 5.      �� 5/      50      52      �� 53      -   5        #��[ 53      $��Cancel��69   $��23��6J   $��75��6W   $��5q�6c   54      55      &   System.Windows.Controls.DataGrid  56   
   -   5        $��dgResult��57   R     BaseDataGrid#��[ 56      $��2��69   $��3��6F   	   AutoGenerateColumns	 .  
   SelectionMode$
 Extended=�58         CanUserAddRows .     CanUserDeleteRows .  $��0,6,0,0q�59      ��57      �� *
ResultList+   Columns 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��5<   1      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6=      
IsReadOnly . 1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 5;   %   �� *
UdListID+5<   G     5=      $
 Name��5>   1   $ * 6?    .  5=   %   �� *Name+5>   I     5?      $ Description��5@   1   $
 Auto 6F    .  5?   %   �� *Description+5@   S   5B      �� 5C   
   #��[ 6   $��1��65   $��3��6E   $��23��5D      $��OK��6   $��5q�6*   $��75��65    5E        5F      $ Click��6!   . 5G        $ CommitSearchCommand��5I       5H      �� 5I      5J      5L      5M      5N      