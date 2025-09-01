import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppRadiuses
{
  AppRadiuses._();

  static final only = BorderOnly._();
  static final circular = BorderCircular._();
}

class BorderOnly
{
  BorderOnly._();

}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 12.r]
  BorderRadius get introCardDot => BorderRadius.circular(12.r);
  /// [circular: 16.r]
  BorderRadius get coacheInfoCard => BorderRadius.circular(16.r);
  /// [circular: 20.r]
  BorderRadius get coachesCard => BorderRadius.circular(20.r);
  /// [circular: 25.r]
  BorderRadius get textField => BorderRadius.circular(25.r);
  /// [circular: 24.r]
  BorderRadius get sportWidget => BorderRadius.circular(24.r);
  /// [circular: 100.r]
  BorderRadius get sportIcon => BorderRadius.circular(100.r);

}


abstract class AppBorderWidth
{
  AppBorderWidth._();

  /// [small: 2px]
  static double get xSmall => 2.0.w;
}