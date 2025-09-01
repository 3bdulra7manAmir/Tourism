import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget 
{
  const CustomAppBar({
    super.key,
    this.backgroundColor,
    this.title,
    this.leadingWidth,
    this.leading,
    this.actions,
    this.actionsPadding,
    this.toolbarHeight,
  });

  final Color? backgroundColor;
  final Widget? title;
  final double? leadingWidth;
  final Widget? leading;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? actionsPadding;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: backgroundColor,
      title: title, centerTitle: true,

      leading: leading,
      leadingWidth: leadingWidth,

      actions: actions,
      actionsPadding: actionsPadding,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));
}