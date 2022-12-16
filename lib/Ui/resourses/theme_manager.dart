import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'value_manager.dart';
import 'style_manager.dart';

ThemeData getApplicationTheme()
{
  return ThemeData(
   cardTheme: CardTheme(
     color: ColorManager.white,
     shadowColor: ColorManager.grey,
     elevation: AppSize.s4
   ),

    textTheme: TextTheme(
      displayLarge: StyleManager.getLightStyle(color: ColorManager.white, fontSize: AppSize.s22),
      bodyLarge: StyleManager.getRegularStyle(color: ColorManager.grey1),
      bodySmall: StyleManager.getRegularStyle(color: ColorManager.grey),
    ),
  );
}