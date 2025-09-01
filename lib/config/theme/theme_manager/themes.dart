import 'package:flutter/material.dart';
import 'themes_styles.dart';

class AppTheme
{
  AppTheme._();

  static ThemeData lightTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      //scaffoldBackgroundColor: AppColors.color.kBlack001, // Scaffold Background Color HERE
      cardTheme: LightThemeStyles.cardTheme,

      //elevatedButtonTheme: LightThemeStyles.elevatedButtonTheme,
      inputDecorationTheme: LightThemeStyles.inputBorder,

      appBarTheme: LightThemeStyles.appBarTheme,
      dialogTheme: LightThemeStyles.dialogTheme,
      bottomSheetTheme: LightThemeStyles.bottomSheetTheme,
      
    );
  }

  static ThemeData darkTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      //scaffoldBackgroundColor: AppColors.color.kBlack001, // Scaffold Background Color HERE
      cardTheme: DarkThemeStyles.cardTheme,

      //elevatedButtonTheme: DarkThemeStyles.elevatedButtonTheme,
      inputDecorationTheme: DarkThemeStyles.inputBorder,

      appBarTheme: DarkThemeStyles.appBarTheme,
      dialogTheme: DarkThemeStyles.dialogTheme,
      bottomSheetTheme: DarkThemeStyles.bottomSheetTheme,
      
    );
  }
}