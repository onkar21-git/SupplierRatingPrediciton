   M S B A M L   `   `   `  ����d  `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF  5   	   l hSystem.Windows.Controls.DataVisualization.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting 5	   	   U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5   	    SupplierRatingPrediction_UI+   %SupplierRatingPrediction_UI.Dashboard   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   `mRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     5   	   �chartingToolkit{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5	   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	     � WindowState$  	Maximized=�5   	    � Title$ 	Dashboard��5   	   $
��auto��6   $
��auto��6)    � 	Resources 5       �� Source�� 5   
   $  Styles\BlueThemeStyle.xaml?�6   %    .��5      � .+�5   
   �� ��5      �� 5         winBackground �� ImageSource# [  6    j� Stretch$
 Fill=�6J   5      �� 5   
   -   5         ��Name$ brdrMain��5      ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property �@��CornerRadius	 �� Value$	 10��65   �� 5       � ��$	 10q�6/   �� 5       � ��$	 4q�68   �� 5       � ��  infoBox_brush#	 [ 64   5       
 J� Effect
 5"      3  -System.Windows.Media.Effects.DropShadowEffect  5#         ShadowDepth$ 7Q�6#      Color$ 	#FFF4BA9A��5$   #      
BlurRadius$ 15Q�5%   #   65   5(      � 5)   
   -   5         �Name$ mainGrid��5)      $��Center=�5*      $��Center=�5+      $��20q�5,       � RowDefinitions 5-      �� 5.      $��* �6    6-   �� 5/      $��3* �6    6.   .+�51      � $��0��6   
���   � � ColumnDefinitions 52      �� 53      $
��auto �6'   66   �� 54      $��* �6'   63   �� 55      $
��auto �6'   66   .+�57      �� $��..\Images\logo.jpg��6   $��10q�64   6B   �� 58      $ ��Supplier Rating Prediction��6   $��1��59      $��Center=�5:      $��Center=�5;      $��45(�5<      �� 5=      $��..\Images\AI.jpg��6   $��10q�62   $��2��6>   6P   5>      � 5@      $��1��6   $	��650��6    $
��1400��6-    5A      �� 5B      $��* �6$   61   �� 5C      $��* �6$   61   .+�5E      �  5F      �� 5G      $��* �6+   67   �� 5H      $��2* �6+   68   .+�5J      � -   5        $��InputParametersGrid��5J      $
��Left=�5K      $��0,20,0,0q�5L      $	��450��5M      
���   � 5O      �� 5P      $
��auto �6(   68   �� 5Q      $
��auto �6(   68   �� 5R      $
��auto �6(   68   �� 5S      $
��auto �6(   68   �� 5T      $
��auto �6(   68    5V      �� 5W      $	��200 �6+   69   �� 5X      $��* �6+   67   .+�5Z      �� $��	Commodity��6    $��0��5[      $��0��5\      $��0,50,0,0q�5]       �� Padding$ 5q�5^      $��18(�5_      �� 5`      $��
MF Process��6    $��1��5a      $��0��5b      $ 5q�5c      $��18(�5d      �� 5e      $��Volume��6    $��2��5f      $��0��5g      $ 5q�5h      $��18(�5i      �� 5j      $��Order Amount��6    $��3��5k      $��0��5l      $ 5q�5m      $��18(�5n      �� 5q      -   5         ��Name$ cmbCommodity��5q      $��0��5r      $��1��5s      $��5��5t      $	��200��5u      $��5,50,5,5q�5v      $��20(�5w      �� 5x      -   5        $��cmbMPProcess��5x      $��1��5y      $��1��5z      $��5��5{      $	��200��5|      $��5q�5}      $��20(�5~      6*   �� 5      -   5         ��Name$ 	txtVolume��5      $��2��5�      $��1��5�      $��5��5�      $	��200��5�      $��5q�5�      $��20(�5�      �� 5�      -   5        $ txtOrderAmount��5�      $��3��5�      $��1��5�      $��5��5�      $	��200��5�      $��5q�5�      $��20(�5�      �� 5�      -   5         ��Name$ 
btnPredict��5�      $��Predict Rating��5�      $��4��5�      $��0��5�      $��5,40,5,0q�5�      5�      �� 5�      -	   5        $��btnClose��5�      $��Clear��5�      $��4��5�      $��1��5�      $	��200��5�      $��5,40,0,0q�5�      5�      � 5�      -
   5        $��barChartGrid��5�      $��1��6+   $��0,20,0,0q�6;   $
��auto��6M    5�      �� 5�      $��* �6/   6;   �� 5�      $��* �6/   6;   .+�5�      � $��0��6   .+�5�      #  LiveCharts.Wpf.CartesianChart  -   5        $��barChart��5�   -   &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$	 Top=�6a   
���   �
�������   Series 6=   �� *SeriesCollection+   AxisX 5�   "     LiveCharts.Wpf.Axis     Title$ Salesman��6+      
Foreground
 �   �   Labels 6<   �� *Labels+6k      AxisY 5�   "     $ 	Sold Apps��6+   
 �   �   LabelFormatter 6=   �� *	Formatter+6w   5�      5�      � 5�      $��1��6   .+�5�        LiveCharts.Wpf.PieChart  $ Bottom=�6+      	Hoverable .     DataTooltip 6U   Z�  5�   &     LiveCharts.Wpf.PieSeries    LiveCharts.Wpf.Series   Title$ Maria��64       Values;  5LiveCharts.Wpf.Converters.NumericChartValuesConverter$  3 6B   !   
DataLabels! . "   
LabelPoint" 5�       �� *
PointLabel+  5�   &   $ Charles��64   $  4 6D   ! . " 5�       �� *
PointLabel+  5�   &   $ Frida��64   $  6 6B   ! . " 5�       �� *
PointLabel+  5�   &   $ Frederic��64   $  2 6E   ! . " 5�       �� *
PointLabel+5�      5�      5�      5�      � 5�      $��1��6    5�      �� 5�      6-   �� 5�      6-   .+�5�      � -   5        $��DetailsGrid��5�      $
��Left=�5�      $	��700��5�      $��0,20,0,0q�5�      
���   � 5�      �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<   �� 5�      $
��auto �6,   6<    5�      �� 5�      $��* �6/   6;   �� 5�      $��2* �6/   6<   .+�5�      �� $��Supplier Name:��6$   $��Right=�5�      $��0��5�      $��0��5�      $��0,20,0,0q�5�      $ 5q�5�      $��18(�5�      �� 5�      $��Address:��6$   $��Right=�5�      $��1��5�      $��0��5�      $ 5q�5�      $��18(�5�      �� 5�      $��Years of relationship:��6$   $��Right=�5�      $��2��5�      $��0��5�      $ 5q�5�      $��18(�5�      �� 5�      $��
Lead time:��6$   $��Right=�5�      $��3��5�      $��0��5�      $ 5q�5�      $��18(�5�      �� 5�      $��Supplier size:��6$   $��Right=�5�      $��4��5�      $��0��5�      $ 5q�5�      $��18(�5�      5�      '	   !Microsoft.Maps.MapControl.WPF.Map	  5�      -   5        # 	 Name$# myMap��5�      +
   %Microsoft.Maps.MapControl.WPF.MapCore$ 
  CredentialsProviderT   NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$F$ @Aun_T-SzUzu6RhXts7bR0ecANUU-cIYVA9PkE-USOimHgphne7ApjkpwhI4RKPHY 6+   % 
  Mode;   5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$
% Road 5�   $   & 
  Center<   6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$& 19.0760,72.8777 60   ' 
  	ZoomLevel$' 11Q�6I   $��2��5�      $��1��6$   $��1��64   $
��auto��6A   $��	10,20,0,0q�6N   5�      5�      5�      5�      5�      