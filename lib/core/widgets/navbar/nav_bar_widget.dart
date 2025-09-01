import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/i18n/generated/l10n.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_images.dart';
import '../../constants/app_margins.dart';
import '../../constants/app_paddings.dart';
import 'nav_bar_item_widget.dart';

class CustomButtomNavBar extends StatelessWidget
{
  const CustomButtomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 90.h,
      margin: AppMargins.directional.bottomNavbar,
      padding: AppPadding.directional.bottomNavBar,
      decoration: BoxDecoration(
        color: AppColors.color.kBlack002,
        //gradient: AppColors.gradient.kBackgroundLinear,
        borderRadius: AppRadiuses.circular.sportWidget,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            icon: AppAssets.iconsSvg.home,
            title: S.current.home,
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          NavBarItem(
            icon: AppAssets.iconsSvg.services,
            title: S.current.services,
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          NavBarItem(
            icon: AppAssets.iconsSvg.profile,
            title: S.current.profile,
            isAvatar: true,
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          NavBarItem(
            icon: AppAssets.iconsSvg.menu,
            title: S.current.menu,
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}
