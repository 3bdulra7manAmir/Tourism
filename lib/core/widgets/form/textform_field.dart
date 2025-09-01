import 'package:flutter/material.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_styles.dart';


class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({
    super.key,
    this.height,
    this.width,
    this.isEnabled,
    this.keyboardType,
    this.readOnly,
    this.obscureText,
    this.controller,
    this.validator,
    this.onSubmitted,
    this.hintText,
    this.hintTextDirection,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixStyle,
    this.fillColor,
    this.focusedColor,
    this.borderRadius,
    this.borderRadiusColor,
    this.contentPadding, 
    this.onChanged,
  });

  final double? height;
  final double? width;
  final bool? isEnabled;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final String? hintText;
  final TextDirection? hintTextDirection;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? suffixStyle;
  final Color? fillColor;
  final Color? focusedColor;
  final BorderRadius? borderRadius;
  final Color? borderRadiusColor;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: height, width: width ?? double.infinity,
      child: TextFormField(
        enabled: isEnabled,
        keyboardType: keyboardType,
        readOnly: readOnly ?? false,
        obscureText: obscureText ?? false,
        controller: controller,
        validator: validator,
        onFieldSubmitted: onSubmitted,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintTextDirection: hintTextDirection,
          hintStyle: hintStyle ?? AppStyles.thin(fontColor: AppColors.color.kWhite001.withValues(alpha: 0.48)),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixStyle: suffixStyle,
          fillColor: fillColor,
          focusColor: focusedColor,
          border: borderRadius != null ? OutlineInputBorder(
            borderRadius: borderRadius!, 
            borderSide: BorderSide(color: borderRadiusColor ?? Colors.transparent,)
          ): null,
          contentPadding: contentPadding,
        ),
      ),
    );
  }
}
