   M S B A M L   `   `   `  ����  XERP.Client.WPF.LogIn+    %XERP.Client.WPF.LogIn.Views.LogInView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5      -   5        .��5	      � -   5          � RowDefinitions  5
   
   �� 5      $��50 �6   6*   �� 5      $
��200* �6   6,   �� 5      $��50 �6   6*    � ColumnDefinitions 5   
   �� 5      $
��150* �6   6.   �� 5      $
��250* �6   6.   .+�5   
   �� $��XERP Log In��6   $��0��6'   $��2��64   $��Center=�5      $��4q�61   $
��Bold"�6<   $��20(�5      5      �� 5   
   $��Center=�6   $��1��60   $��0��6=   $��Right=�5      .+�5      �� $��5,5,5,5q�6   $
��Bold"�6)   $��Italic$�5      $��18(�6+   $��Right=�5      User:5      �� 5      $��5,5,5,5q�6   $
��Bold"�6)   $��Italic$�5      $��18(�6+   $��Right=�5      	Password:5       �� 5!      $��5,5,5,5q�6   $
��Bold"�6)   $��Italic$�5"      $��18(�6+   $��Right=�5#      
Company:5$      5%      �� 5&   
   $��Center=�6   $��1��60   $��1��6=   $��Stretch=�5'      .+�5(      �� -   5        $��txtKey��5(      $��5,5,5,5q�6$   $��14(�65   ��5)      ��  �� Path$ UserNameInput� �� 	MaxLength 5*      �� *.,CompanyMaxFieldValueDictionary[SystemUserID]+.��6Z   5,      �� 5-      $��5,5,5,5q�6   $��14(�6'   ��5.      �� $ PasswordInput� 5/      �� **(CompanyMaxFieldValueDictionary[Password]+.��6W   50      �� 51      $��Stretch=�6   $��5q�67    �� DisplayMemberPath$ 	CompanyID��53       �� SelectedValuePath$ 	CompanyID��55      $��23��6;   ��52      �� $ GlobalCompanyList� �� SelectedValue 54      �� $ GlobalCompanyID� �� Mode$ TwoWay=�56      �� 57      -   5        $��ghost��57   ,   $��0��6   $��0��6    -  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  69   58      �� 59   
   	 �� Orientation$	 
Horizontal=�6   $��2��6.   $��2��6<   $��Center=�5:      $
��Left=�60   .+�5;      �� $��OK��6   $��40��6    $��	20,4,25,4q�6+   $��15(�6>   .  (System.Windows.Interactivity.Interaction
   Triggers
 5<      /  )System.Windows.Interactivity.EventTrigger  5=         	EventName$ Click��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5>      >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ AuthenticateCommand��5@         TargetObject 5?      �� 5@      5A      5C      �� 5D      -   5        $��Cancel��5D      $��4,4,4,4q�6&   $��15(�6L   6\   5E      5F      5G      