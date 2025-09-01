import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppMargins
{
  AppMargins._();

  static final symmetric = Symmetric._();
  static final directional = Directional._();
  static final special = Special._();
}

class Symmetric
{
  Symmetric._();

  /// [horizontal: 16.w]
  EdgeInsets get card => EdgeInsets.symmetric(horizontal: 16.w);
}

class Directional
{
  Directional._();

  /// [directional: 27.w] End
  EdgeInsetsDirectional get notificationsBill => EdgeInsetsDirectional.only(end: 27.w);

  /// [directional: 27.w] End
  EdgeInsetsDirectional get bottomNavbar => EdgeInsetsDirectional.only(
    end: 15.w, start: 15.w, bottom: 10.h, top: 25.h,
  );
}

class Special
{
  Special._();

  /// [0.w]
  EdgeInsets get zero => EdgeInsets.zero;
}
