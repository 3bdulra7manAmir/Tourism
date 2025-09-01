import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/margin.dart';
import '../utils/logger/app_logger.dart';

class CustomColumn extends StatelessWidget
{
  const CustomColumn({super.key, this.crossAxisAlignment, required this.children, this.isMargin});

  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget> children;
  final bool? isMargin;

  @override
  Widget build(BuildContext context)
  {
    (isMargin ?? true) ? AppLogger.debug('Custom Column Margin -> 27.w') : null;
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: children
    ).marginDirectional(start: (isMargin ?? true) ? 27.w : 0);
  }
}


class CustomSingleChild extends StatelessWidget
{
  const CustomSingleChild({super.key, this.crossAxisAlignment, required this.children, this.isMargin});

  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget> children;
  final bool? isMargin;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        children: children
      ).marginDirectional(start: (isMargin ?? false) ? 27.w : 0),
    );
  }
}