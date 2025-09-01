import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_sizes.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../../config/theme/font_manager/fonts.dart';

abstract class AppStyles
{
  AppStyles._();

  /// Size= [16] Weight= [w400], Color= [_FFFFFF],
  static TextStyle semiBold({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.meduim.sp,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [14] Weight= [w400], Color= [_#FFFFFF],
  static TextStyle thin({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.xSmall.sp,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [12] Weight= [w400], Color= [_FFFFFF],
  static TextStyle semiThin({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.xXSmall.sp,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

}
