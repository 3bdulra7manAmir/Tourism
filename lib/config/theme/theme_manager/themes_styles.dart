import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_borders.dart';
import '../../../core/constants/app_margins.dart';
import '../../../core/constants/app_sizes.dart';
import '../color_manager/colors.dart';

//------------------------------------------------//
//                 Light THEME                    //
//------------------------------------------------//
abstract class LightThemeStyles
{
  LightThemeStyles._();

  // static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: AppRadiuses.circular.textField, // Button Border Radius HERE
  //         side: BorderSide(color: AppColors.color.kTransparent,),), // Button Side Color HERE
  //     ),
  //     backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlack001), // Buton BackGround Text Here...
  //     overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
  //     shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
  //     elevation: WidgetStateProperty.all(0),
  //     splashFactory: NoSplash.splashFactory,
  //     alignment: Alignment.center,
  //   ),
  // );


  static InputDecorationTheme get inputBorder => InputDecorationTheme(
    border: textFieldBorder(),
    enabledBorder: textFieldBorder(),
    focusedBorder: textFieldBorder(),
    errorBorder: textFieldBorder(),
    disabledBorder: textFieldBorder(),
    focusedErrorBorder: textFieldBorder(),
  );

  static OutlineInputBorder textFieldBorder()
  {
    return OutlineInputBorder(
    borderRadius: AppRadiuses.circular.textField,
    borderSide: BorderSide(
      width: Sizes.s1.w,
      color: AppColors.color.kWhite001.withValues(alpha: 0.35),
    ),
  );
  }

  static CardThemeData get cardTheme => CardThemeData(
    elevation: 0,
    margin: AppMargins.special.zero,
    color: AppColors.color.kTransparent,
    //shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.),
  );
  
  static AppBarTheme get appBarTheme => AppBarTheme(
    scrolledUnderElevation: 0,
    surfaceTintColor: AppColors.color.kTransparent,
    backgroundColor: AppColors.color.kTransparent,
    elevation: 0,
  );

  static DialogThemeData get dialogTheme => const DialogThemeData();
  static BottomSheetThemeData get bottomSheetTheme => const BottomSheetThemeData();
}

//------------------------------------------------//
//                  DARK THEME                    //
//------------------------------------------------//
abstract class DarkThemeStyles
{
  DarkThemeStyles._();

  // static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: AppRadiuses.circular.textField, // Button Border Radius HERE
  //         side: BorderSide(color: AppColors.color.kTransparent,),), // Button Side Color HERE
  //     ),
  //     backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlack001), // Buton BackGround Text Here...
  //     overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
  //     shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
  //     elevation: WidgetStateProperty.all(0),
  //     splashFactory: NoSplash.splashFactory,
  //     alignment: Alignment.center,
  //   ),
  // );


  static InputDecorationTheme get inputBorder => InputDecorationTheme(
    border: textFieldBorder(),
    enabledBorder: textFieldBorder(),
    focusedBorder: textFieldBorder(),
    errorBorder: textFieldBorder(),
    disabledBorder: textFieldBorder(),
    focusedErrorBorder: textFieldBorder(),
  );

  static OutlineInputBorder textFieldBorder()
  {
    return OutlineInputBorder(
    borderRadius: AppRadiuses.circular.textField,
    borderSide: BorderSide(
      width: Sizes.s1.w,
      color: AppColors.color.kWhite001.withValues(alpha: 0.35),
    ),
  );
  }

  static CardThemeData get cardTheme => CardThemeData(
    elevation: 0,
    margin: AppMargins.special.zero,
    color: AppColors.color.kTransparent,
    //shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.),
  );
  
  static AppBarTheme get appBarTheme => AppBarTheme(
    scrolledUnderElevation: 0,
    surfaceTintColor: AppColors.color.kTransparent,
    backgroundColor: AppColors.color.kTransparent,
    elevation: 0,
  );

  static DialogThemeData get dialogTheme => const DialogThemeData();
  static BottomSheetThemeData get bottomSheetTheme => const BottomSheetThemeData();
}