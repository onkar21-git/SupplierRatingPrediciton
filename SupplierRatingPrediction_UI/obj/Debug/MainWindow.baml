   M S B A M L   `   `   `  ����V  RSupplierRatingPrediction_UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:SupplierRatingPrediction_UISupplierRatingPrediction_UI  5   	   ,    &SupplierRatingPrediction_UI.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:SupplierRatingPrediction_UI     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	       �� Source�� 5
   
   $  Styles\BlueThemeStyle.xaml?�6   %    .��5      � .+�5   
   �� ��5      �� 5         winBackground �� ImageSource# [  6    j� Stretch$
 Fill=�6J   5      �� 5   
   -   5         ��Name$ brdrMain��5      
���   ���5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property �@��CornerRadius �� Value$ 10��65   �� 5       � ��$	 100q�6/   �� 5       � ��$ 4q�68   �� 5       � ��  infoBox_brush# [ 64   5      	 J� Effect	 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      
   ShadowDepth$
 7Q�6#      Color$ 	#FFF4BA9A��5   #      
BlurRadius$ 15Q�5   #   65   ._�5       � -   5         �Name$ grdLogin��5       $��15q�6%   $��Center=�5!      $��Center=�5"       � RowDefinitions 5#      �� 5$      $
��Auto �6$   64   �� 5%      $
��Auto �6$   64   �� 5&      $
��Auto �6$   64   �� 5'      $
��Auto �6$   64    � ColumnDefinitions 5)      �� 5*      $	��150 �6'   65   �� 5+      $	��180 �6'   65   .+�5.      �� $��Username��6   $��0��5/      $��0��50      $
��Bold"�51      $��20(�52       �� Padding$ 10q�53      �� 54      $��Password��6   $��1��55      $��0��56      $
��Bold"�57      $��20(�58      $ 10q�59      G� 5:      -   5         G�Name$ txtPassword��5:      $��1��5;      $��1��5<      $��10��5=      $��15(�5>      $��10q�5?      �� 5@      -   5         ��Name$ txtUserName��5@      $��0��5A      $��1��5B      $��10��5C      $��15(�5D      $��10q�5E      �� 5F      -   5         ��Name$ btnLogin��5F      $��Login��5H      $��3��5I      $��0��5J      $��10q�5K      �� 5L      -   5        $��btnClose��5L      $��Close��5M      $��3��5O      $��1��5P      $��10q�5Q      5R      5S      5T      5U      