import 'package:flutter/material.dart';
import 'color_manager_base.dart';


class LightColorScheme extends ColorManagerBase
{

  @override
  /// [Transparent]
  Color get kTransparent => Colors.transparent;

  // Black Color Range
  @override
  /// [000000]
  Color get kBlack001 => const Color(0xff000000);
  @override
  /// [2D2D2D]
  Color get kBlack002 => const Color(0xff2D2D2D);
  @override
  /// [333333]
  Color get kBlack003 => const Color(0xff333333);
  @override
  /// [333333]
  Color get kBlack004 => const Color(0xff333333);
  
  // Grey Color Range
  @override
  /// [_959595]
  Color get kGrey001 => const Color(0xff959595);

  // White Color Range
  @override
  /// [_FFFFFF]
  Color get kWhite001 => const Color(0xffFFFFFF);

  // Green Color Range
  @override
  /// [_2AAE1D]
  Color get kGreen001 => const Color(0xff2AAE1D);

  // // Orange Color Range
  // @override
  // /// [_F4A91F]
  // Color get kOrange001 => const Color(0xffF4A91F);

  // // Yellow Color Range
  // /// [_FDF4E2]
  // @override
  // Color get kYellow001 => const Color(0xFFFDF4E2);

  // // Red Color Range
  // /// [EB5757]
  // @override
  // Color get kRed001 => const Color(0xFFEB5757);

  // // Blue Color Range
  // /// [_131F46]
  // @override
  // Color get kBlue001 => const Color(0xFF131F46);
}


class LightGradients extends GradientManagerBase {
  @override
  SweepGradient get kBackgroundLinear => const SweepGradient(
        colors: [
          Color(0xff161616),
          Color(0xff2D2D2D),
          Color(0xff2D2D2D),
          Color(0xff161616),
        ],
      );
}