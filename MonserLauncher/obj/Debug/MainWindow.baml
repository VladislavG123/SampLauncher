   M S B A M L   `   `   `  ����I  EMonserLauncher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MonserLauncherMonserLauncher  5   	       MonserLauncher.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:MonserLauncher     5   	   S OMaterialDesignThemes.Wpf, Version=1.0.1.0, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5	      $��Regular"�5
      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � Title$ 
MainWindow��5   	   $	��550��6   $	��750��6)    � 
ResizeMode$ NoResize=�65    � WindowStyle$
 None=�6K   .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   �� 5      $	��100 �6   ��5   
   �� 5       �� ImageSource$ img/bg1.jpg��6    j� Stretch$ UniformToFill=�63    �� Opacity$	 0.9Q�6K   .+�5   
   � -   5        	 �Name$	 header��5      
 K� ZIndex$
 5��6   $��0��60    � ColumnDefinitions 5      �� 5      $
��109* �6#   �� 5       $
��162* �6#   �� 5!      $	��150 �6#   ��5#      �� 5$       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5%      �  � Color$ Black��6#    � Offset$ 0.143Q�61   � 5&      $ 	#0C171717��6#   $ 1Q�65   5'      .+�5*      � $��2��6    5+      �� 5,      $��* �6'   �� 5-      $��* �6'   �� 5.      $��* �6'   .+�50      �� -   5        $��40��50   U   $��40��6`   ���	#FFCD0000$��2��6�    + 'MaterialDesignFloatingActionLightButton#���  6�   ���	#00CD0000���	#FFCD0000.��51      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   $��30��6;   $
��auto��6G   52      �� 53      -   5        $��40��53   U   $��40��6`   ���	#FFCD0000$��1��6�   #���  6�   ���	#00CD0000���	#FFCD0000.��54        $ HorizontalLine=�6/   $��30��6E   $
��auto��6Q   55      �� 56      -   5        $��40��56   U   $��40��6`   ���	#FFCD0000$��0��6�   #���  6�   ���	#00CD0000���	#FFCD0000.��57        $ Settings=�6/   $��30��6?   $
��auto��6K   58      59      � 5:      $��0��6   .+�5;      �� -   5        $��userNameTextBox��5;      .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�61   $��15(�6n    �� TextAlignment$ Center=�6|   $��40��6�   $	��190��6�   ���	#CCFFFFFF �� 
CaretBrush �	#FFCD0000 �� SelectionBrush �	#FFCD0000���	#05CD0000$��1q�6  $
��Bold"�6    �� 	MaxLength$ 25��62   �� MaxLines$ 1��6A  ���	#24CD0000.��6e  )  #MaterialDesignThemes.Wpf.HintAssist   Hint 5<      �� 5=      
�������	User name6B   .��5>   6   5?      5@      5B      � 5D   
   -   5        $	 content��5D      $	��350��6    $��1��6-    5E      �� 5F      $
��364* �6#   �� 5G      $
��345* �6#   �� 5H      $	��33* �6#   .+�5J      �� -   5         ��Name$ 
mainPerson��5J   &   $
 10��6   $��img/person (2).png��6:    � Cursor$
 None��6V   $��-948,-228,-646,-102q�6d   $��3��6�   � 5K      $��1��6    5L      �� 5M      $��2* �6$   �� 5N      $��1* �6$   �� 5O      $��1* �6$   �� 5P      $��1* �6$   5S      5T      � 5V   
   -   5        $	 footer��5V      $	��100��6   $��2��6,    5W      �� 5X      $	��25* �6#   �� 5Y      $	��36* �6#   �� 5Z      $
��351* �6#   �� 5[      $
��138* �6#   �� 5\      $
��192* �6#   ��5^      �� 5_      $ 0.5,1&�6&   $ 0.5,0&�67   .��5`      � $ 	#0C000000��6#   $ 0Q�65   � 5a      $ Black��6#   $	 0.9Q�61   5b      .+�5e      �� -	   5        $��4��5e   '   ���	#FFDC1818$��Играть��6O   $��30(�6`   $��0q�6n   $��60��6z   $��10q�6�   ��5f      �� 5g      $ img/4028.jpg��6!   $ UniformToFill=�6<   5i      5l      5n      5o      