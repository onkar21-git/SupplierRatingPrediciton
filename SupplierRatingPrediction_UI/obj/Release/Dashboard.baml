   M S B A M L   `   `   `  ���� d  `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF  l hSystem.Windows.Controls.DataVisualization.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  SupplierRatingPrediction_UI+   %SupplierRatingPrediction_UI.Dashboard   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     `mRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     �chartingToolkit{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf       � WindowState$  	Maximized=� � Title$ 	Dashboard��$
��auto��$
��auto�� � 	Resources  �� Source�� $  Styles\BlueThemeStyle.xaml?�%    .��� .+��� ����    winBackground �� ImageSource# [   j� Stretch$
 Fill=��� -    ��Name$ brdrMain������  �� 
TargetType" ��.���  �� Property �@��CornerRadius	 �� Value$	 10����  � ��$	 10q���  � ��$	 4q���  � ��  infoBox_brush#	 [ 
 J� Effect
 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 7Q�   Color$ 	#FFF4BA9A��   
BlurRadius$ 15Q�� -    �Name$ mainGrid��$��Center=�$��Center=�$��20q� � RowDefinitions �� $��* ��� $��3* �.+�� $��0��
���   � � ColumnDefinitions �� $
��auto ��� $��* ��� $
��auto �.+��� $��..\Images\logo.jpg��$��10q��� $ ��Supplier Rating Prediction��$��1��$��Center=�$��Center=�$��45(��� $��..\Images\AI.jpg��$��10q�$��2��� $��1��$	��650��$
��1400�� �� $��* ��� $��* �.+��  �� $��* ��� $��2* �.+�� -   $��InputParametersGrid��$
��Left=�$��0,20,0,0q�$	��450��
���   � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto � �� $	��200 ��� $��* �.+��� $��	Commodity��$��0��$��0��$��0,50,0,0q� �� Padding$ 5q�$��18(��� $��
MF Process��$��1��$��0��$ 5q�$��18(��� $��Volume��$��2��$��0��$ 5q�$��18(��� $��Order Amount��$��3��$��0��$ 5q�$��18(��� -    ��Name$ cmbCommodity��$��0��$��1��$��5��$	��200��$��5,50,5,5q�$��20(��� -   $��cmbMPProcess��$��1��$��1��$��5��$	��200��$��5q�$��20(��� -    ��Name$ 	txtVolume��$��2��$��1��$��5��$	��200��$��5q�$��20(��� -   $ txtOrderAmount��$��3��$��1��$��5��$	��200��$��5q�$��20(��� -    ��Name$ 
btnPredict��$��Predict Rating��$��4��$��0��$��5,40,5,0q��� -	   $��btnClose��$��Clear��$��4��$��1��$	��200��$��5,40,0,0q�� -
   $��barChartGrid��$��1��$��0,20,0,0q�$
��auto�� �� $��* ��� $��* �.+�� $��0��.+�#  LiveCharts.Wpf.CartesianChart  -   $��barChart��&   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$	 Top=�
���   �
�������   Series �� *SeriesCollection+   AxisX   LiveCharts.Wpf.Axis     Title$ Salesman��   
Foreground
 �   �   Labels �� *Labels+   AxisY   $ 	Sold Apps��
 �   �   LabelFormatter �� *	Formatter+� $��1��.+�  LiveCharts.Wpf.PieChart  $ Bottom=�   	Hoverable .     DataTooltip Z�    LiveCharts.Wpf.PieSeries    LiveCharts.Wpf.Series   Title$ Maria��    Values;  5LiveCharts.Wpf.Converters.NumericChartValuesConverter$  3 !   
DataLabels! . "   
LabelPoint" �� *
PointLabel+  $ Charles��$  4 ! . " �� *
PointLabel+  $ Frida��$  6 ! . " �� *
PointLabel+  $ Frederic��$  2 ! . " �� *
PointLabel+� $��1�� �� �� .+�� -   $��DetailsGrid��$
��Left=�$	��700��$��0,20,0,0q�
���   � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto � �� $��* ��� $��2* �.+��� $��Supplier Name:��$��Right=�$��0��$��0��$��0,20,0,0q�$ 5q�$��18(��� $��Address:��$��Right=�$��1��$��0��$ 5q�$��18(��� $��Years of relationship:��$��Right=�$��2��$��0��$ 5q�$��18(��� $��
Lead time:��$��Right=�$��3��$��0��$ 5q�$��18(��� $��Supplier size:��$��Right=�$��4��$��0��$ 5q�$��18(�'	   !Microsoft.Maps.MapControl.WPF.Map	  -   # 	 Name$# myMap��+
   %Microsoft.Maps.MapControl.WPF.MapCore$ 
  CredentialsProviderT   NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$F$ @Aun_T-SzUzu6RhXts7bR0ecANUU-cIYVA9PkE-USOimHgphne7ApjkpwhI4RKPHY % 
  Mode;   5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$
% Road & 
  Center<   6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$& 19.0760,72.8777 ' 
  	ZoomLevel$' 11Q�$��2��$��1��$��1��$
��auto��$��	10,20,0,0q�