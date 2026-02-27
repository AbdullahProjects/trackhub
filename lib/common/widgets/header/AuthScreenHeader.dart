import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class AuthScreenHeader extends StatelessWidget implements PreferredSizeWidget {
  const AuthScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.of(context).canPop();

    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      leading: canPop
          ? IconButton(
              onPressed: () => Get.back(),
              icon: const FaIcon(
                FontAwesomeIcons.chevronLeft,
                size: AppSizes.iconSm,
                color: AppColors.primary,
              ),
            )
          : null,
      title: Image.asset(
        AppImages.headerAppLogo,
        width: DeviceUtility.getScreenWidth() * 0.28,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());
}
