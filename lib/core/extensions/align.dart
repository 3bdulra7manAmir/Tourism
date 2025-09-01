import 'package:flutter/material.dart';

extension WidgetAlignX on Widget
{
  Widget align(AlignmentGeometry alignment) => Align(alignment: alignment, child: this);
}
