   M S B A M L   `   `   `  ����[  WSupplierRatingPrediction_UI_Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:SupplierRatingPrediction_UI_Core SupplierRatingPrediction_UI_Core  5   	   U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5   	   d `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF 5	   	   0    *SupplierRatingPrediction_UI_Core.Dashboard   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:SupplierRatingPrediction_UI_Core     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	   `mRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     5	   	     � Title$  	Dashboard��5
   	   $	��450��6   $	��800��6(    � WindowState$ 	Maximized=�64    � 	Resources 5       �� Source�� 5   
   $  Styles\BlueThemeStyle.xaml?�6   %    .��5      � .+�5   
   �� ��5      �� 5         winBackground �� ImageSource# [  6    j� Stretch$
 Fill=�6J   5      �� 5   
   -   5         ��Name$ brdrMain��5      ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property �@��CornerRadius	 �� Value$	 10��65   �� 5       � ��$	 10q�6/   �� 5       � ��$	 4q�68   �� 5       � ��  infoBox_brush#	 [ 64   5      
 J� Effect
 5       3  -System.Windows.Media.Effects.DropShadowEffect  5!         ShadowDepth$ 7Q�6#      Color$ 	#FFF4BA9A��5"   #      
BlurRadius$ 15Q�5#   #   65   5&      � 5'   
   -   5         �Name$ mainGrid��5'      $��Center=�5(      $��Center=�5)      $��20q�5*       � RowDefinitions 5+      �� 5,      $��* �6    6-   �� 5-      $��3* �6    6.   .+�5/      � $��0��6   
���   � � ColumnDefinitions 50      �� 51      $
��auto �6'   66   �� 52      $��* �6'   63   �� 53      $
��auto �6'   66   .+�55      �� $��..\Images\logo.jpg��6   $��10q�64   6B   �� 56      $ ��Supplier Rating Prediction��6   $��1��57      $��Center=�58      $��Center=�59      $��45(�5:      �� 5;      $��..\Images\AI.jpg��6   $��10q�62   $��2��6>   6P   5<      � 5>      $��1��6   $	��650��6    $
��1400��6-    5?      �� 5@      $��* �6$   61   �� 5A      $��* �6$   61   .+�5C      �  5D      �� 5E      $��* �6+   67   �� 5F      $��2* �6+   68   .+�5H      � -   5        $��InputParametersGrid��5H      $
��Left=�5I      $��0,20,0,0q�5J      $	��450��5K      
���   � 5M      �� 5N      $
��auto �6,   6<   �� 5O      $
��auto �6,   6<   �� 5P      $
��auto �6,   6<   �� 5Q      $
��auto �6,   6<    5S      �� 5T      $	��200 �6/   6=   �� 5U      $��* �6/   6;   .+�5W      �� $��	Commodity��6$   $��0��5X      $��0��5Y      $��0,50,0,0q�5Z       �� Padding$ 5q�5[      $��18(�5\      �� 5]      $��
MF Process��6$   $��1��5^      $��0��5_      $ 5q�5`      $��18(�5a      �� 5b      $��Volume��6$   $��2��5c      $��0��5d      $ 5q�5e      $��18(�5f      �� 5i      -   5         ��Name$ cmbCommodity��5i   #   $��0��5j      $��1��5k      $��5��5l      $	��200��5m      $��5,50,5,5q�5n      $��20(�5o      �� 5p      -   5        $��cmbMPProcess��5p   #   $��1��5q      $��1��5r      $��5��5s      $	��200��5t      $��5q�5u      $��20(�5v      6*   �� 5w      -   5         ��Name$ 	txtVolume��5w   "   $��2��5x      $��1��5y      $��5��5z      $	��200��5{      $��5q�5|      $��20(�5}      �� 5�      -   5         ��Name$ 
btnPredict��5�   !   $��Predict Rating��5�      $��3��5�      $��0��5�      $��5,40,5,0q�5�      5�      �� 5�      -   5        $��btnClose��5�   !   $��Clear��5�      $��3��5�      $��1��5�      $	��200��5�      $��5,40,0,0q�5�      5�      � 5�      -	   5        $��barChartGrid��5�      $��1��6/   $��0,20,0,0q�6?   $
��auto��6Q    5�      �� 5�      $��2* �6/   6<   �� 5�      $��* �6/   6;   .+�5�      � $��0��6   .+�5�      #  LiveCharts.Wpf.CartesianChart  -
   5        $��barChart��5�   1   &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$	 Top=�6�   
���   �
�������   Series 6`   �� *SeriesCollection+   AxisX 5�   &     LiveCharts.Wpf.Axis     Title$ Supplier��6/      
Foreground
 �   �   LabelsRotation$	 -30Q�6m      Labels 6@   �� *Labels+   	Separator 5�   *     LiveCharts.Wpf.Separator  5�   .      Step$ 1Q�6<   6G   5�   '      AxisY 5�   &     $ Predicted Rating��6/   
 �   �   LabelFormatter 6H   �� *	Formatter+6�   5�      5�      � 5�      $��1��6   .+�5�        LiveCharts.Wpf.PieChart  -   5        $��	pieChart1��5�   +   $ Bottom=�6<       	Hoverable$  False��6T   !   DataTooltip! 6f   Z� 5�      5�      5�      5�      � 5�      $��1��6    5�      �� 5�      6-   �� 5�      6-   .+�5�      � -   5        $��DetailsGrid��5�      $
��Left=�5�      $	��700��5�      $��0,20,0,0q�5�      
���   � 5�      �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<    5�      �� 5�      $��* �6/   6;   �� 5�      $��2* �6/   6<   .+�5�      �� $��Supplier Name:��6$   $��Right=�5�      $��0��5�      $��0��5�      $��0,20,0,0q�5�      $ 5q�5�      $��18(�5�      �� 5�      -   5        $��lblSupplierName��5�   $   $
��Left=�5�      $��0��5�      $��1��5�      $��0,20,0,0q�5�      $ 5q�5�      $��18(�5�      �� 5�      $��Address:��6$   $��Right=�5�      $��1��5�      $��0��5�      $ 5q�5�      $��18(�5�      �� 5�      -   5        $��lblSupplierAddress��5�   $   $
��Left=�5�      $��1��5�      $��1��5�      $ 5q�5�      $��18(�5�      �� 5�      $��Years of relationship:��6$   $��Right=�5�      $��2��5�      $��0��5�      $ 5q�5�      $��18(�5�      �� 5�      -   5        $��lblYearsOfRelationship��5�   $   $
��Left=�5�      $��2��5�      $��1��5�      $ 5q�5�      $��18(�5�      �� 5�      $��
Lead time:��6$   $��Right=�5�      $��3��5�      $��0��5�      $ 5q�5�      $��18(�5�      �� 5�      -   5        $��lblLeadTime��5�   $   $
��Left=�5�      $��3��5�      $��1��5�      $ 5q�5�      $��18(�5�      �� 5�      $��Supplier size:��6$   $��Right=�5�      $��4��5�      $��0��5�      $ 5q�5      $��18(�5     �� 5     -   5        $��lblSupplierSize��5  $   $
��Left=�5     $��4��5     $��1��5     $ 5q�5     $��18(�5     5	     '  !Microsoft.Maps.MapControl.WPF.Map  5
     -   5        "  Name$" myMap��5
     +  %Microsoft.Maps.MapControl.WPF.MapCore#   CredentialsProviderT	  NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$F# @Aun_T-SzUzu6RhXts7bR0ecANUU-cIYVA9PkE-USOimHgphne7ApjkpwhI4RKPHY	 6+   $   Mode;
  5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$
$ Road
 5  $   $��2��5     $��1��6$   $��1��64   $
��auto��6A   $��	10,20,0,0q�6N   5     5     5     5     5     