import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class ScreenHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? trailing;
  final Color? backgroundColor;
  final Color? textColor;
  const ScreenHeader({
    super.key,
    required this.title,
    this.trailing,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.of(context).canPop();

    return AppBar(
      leading: !canPop
          ? null
          : IconButton(
              onPressed: () => Get.back(),
              icon: const FaIcon(
                FontAwesomeIcons.chevronLeft,
                size: AppSizes.iconSm,
                color: AppColors.primary,
              ),
              color: AppColors.primary,
            ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: textColor ?? AppColors.black,
        ),
      ),
      actions: [?trailing],
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());
}
