import 'package:flutter/material.dart';
import 'font_manager.dart';

class StyleManager
{
  static TextStyle _getTextStyle(double fontSize, FontWeight FontWeight , Color color)
  {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.FontFamily,
      fontWeight: FontWeight,
      color: color,
    );
  }

  static TextStyle getRegularStyle({double fontSize = FontSizeManager.s12, required Color color})
   {
     return _getTextStyle(fontSize, FontWeightManager.regular, color);
   }

  static TextStyle getLightStyle({double fontSize = FontSizeManager.s12, required Color color})
  {
    return _getTextStyle(fontSize, FontWeightManager.light, color);
  }

  static TextStyle getMediumStyle({double fontSize = FontSizeManager.s12, required Color color})
  {
    return _getTextStyle(fontSize, FontWeightManager.medium, color);
  }

  static TextStyle getSemiBoldStyle({double fontSize = FontSizeManager.s12, required Color color})
  {
    return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
  }

  static TextStyle getBoldStyle({double fontSize = FontSizeManager.s12, required Color color})
  {
    return _getTextStyle(fontSize, FontWeightManager.bold, color);
  }
}