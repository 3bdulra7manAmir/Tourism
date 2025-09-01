import 'package:flutter/material.dart';

import '../../constants/app_paddings.dart';

class CustomListviewBuilder extends StatelessWidget
{

  const CustomListviewBuilder({super.key,
  required this.itemBuilder,
  required this.separatorBuilder,
  required this.itemCount,
  this.padding,
  this.reverse,
  this.physics,
  this.scrollDirection,
  });
  final Widget? Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int) separatorBuilder;
  final int itemCount;
  final EdgeInsetsGeometry? padding;
  final bool? reverse;
  final ScrollPhysics? physics;
  final Axis? scrollDirection ;

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(

      itemBuilder: itemBuilder,
      separatorBuilder: separatorBuilder,
      itemCount: itemCount,
      scrollDirection: scrollDirection ?? Axis.vertical,
      reverse: reverse ?? false,
      physics: physics ?? const ScrollPhysics(),
      padding: padding ?? AppPadding.special.zero,
      shrinkWrap: true,
    );
  }
}