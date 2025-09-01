import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';

class NavBarItem extends StatelessWidget
{
  const NavBarItem({
    super.key,
    required this.icon,
    required this.title,
    this.isAvatar = false,
    required this.isSelected,
    required this.onTap,
  });

  final String icon;
  final String title;
  final bool isAvatar;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context)
  {
    final Color activeColor = AppColors.color.kGreen001;
    final Color inactiveColor = AppColors.color.kWhite001.withValues(alpha: 0.7);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          isAvatar ? Container(width: 20.w, height: 20.h,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(icon, width: 20.w, height: 20.h,),
          ) 
            : SvgPicture.asset(icon, width: 20.w, height: 20.h,
              colorFilter: isSelected ? ColorFilter.mode(activeColor, BlendMode.srcIn)
                : null,),
          Sizes.s10.verticalSpace,
          Text(title, style: AppStyles.semiThin(fontColor: isSelected ? activeColor : inactiveColor,),
          ),
        ],
      ),
    );
  }
}
