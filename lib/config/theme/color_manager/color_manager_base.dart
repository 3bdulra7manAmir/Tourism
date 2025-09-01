import 'package:flutter/material.dart';


abstract class ColorManagerBase
{
  /// [Transparent]
  Color get kTransparent;

  // Black Color Range
  /// [000000] //NotUsed
  Color get kBlack001;
  /// [2D2D2D]
  Color get kBlack002;
  /// [333333]
  Color get kBlack003;
  /// [000000]
  Color get kBlack004;

  // Grey Color Range
  /// [_959595]
  Color get kGrey001;

  // White Color Range
  /// [_FFFFFF]
  Color get kWhite001;

  // Green Color Range
  /// [_2AAE1D]
  Color get kGreen001;

  // // Orange Color Range
  // /// [_F4A91F]
  // Color get kOrange001;

  // // Yellow Color Range
  // /// [FFDE00]
  // Color get kYellow001;

  // // Red Color Range
  // /// [EB5757]
  // Color get kRed001;

  // // Blue Color Range
  // /// [_131F46]
  // Color get kBlue001;

}


abstract class GradientManagerBase {

  /* [Color(0xff161616), Color(0xff2D2D2D), 
    Color(0xff2D2D2D), Color(0xff161616),] */
  SweepGradient get kBackgroundLinear;
}