   M S B A M L   `   `   `  ���� [  WSupplierRatingPrediction_UI_Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:SupplierRatingPrediction_UI_Core SupplierRatingPrediction_UI_Core  1    +SupplierRatingPrediction_UI_Core.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @local.clr-namespace:SupplierRatingPrediction_UI_Core       � Icon$  ..\Images\logo.jpg�� � 
ResizeMode$ NoResize=� � Title$ 
MainWindow��$	��450��$	��800�� � 	Resources  �� Source�� $  Styles\BlueThemeStyle.xaml?�%    .��� .+��� ����    winBackground �� ImageSource# [   j� Stretch$
 Fill=��� -    ��Name$ brdrMain��
���   �����  �� 
TargetType" ��.��� 	 �� Property	 �@��CornerRadius
 �� Value$
 10���� 	 � ��$	
 100q��� 	 � ��$
 4q��� 	 � ��  infoBox_brush#
 [  J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 7Q�   Color$ 	#FFF4BA9A��   
BlurRadius$ 15Q�._�� -    �Name$ grdLogin��$��15q�$��Center=�$��Center=� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $	��150 ��� $	��180 �.+��� $��Username��$��0��$��0��$
��Bold"�$��20(� �� Padding$ 10q��� $��Password��$��1��$��0��$
��Bold"�$��20(�$ 10q�G� -    G�Name$ txtPassword��$��1��$��1��$��10��$��15(�$��10q��� -    ��Name$ txtUserName��$��0��$��1��$��10��$��15(�$��10q��� -    ��Name$ btnLogin��$��Login��$��3��$��0��$��10q��� -   $��btnClose��$��Close��$��3��$��1��$��10q�