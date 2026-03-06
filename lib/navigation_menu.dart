import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:trackhub/features/driver/views/home/DriverHomeScreen.dart';
import 'package:trackhub/features/driver/views/search/DriverSearchScreen.dart';
import 'package:trackhub/features/notification/views/NotificationScreen.dart';
import 'package:trackhub/features/profile/views/ProfileScreen.dart';
import 'package:trackhub/features/student/views/home/StudentHomeScreen.dart';
import 'package:trackhub/features/student/views/search/StudentSearchScreen.dart';
import 'package:trackhub/models/user_role.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key, required this.role});

  final UserRole role;

  static List<NavItemData> _getNavItems(UserRole role) {
    final isStudent = role == UserRole.student;
    return [
      NavItemData(
        label: 'Home',
        icon: Iconsax.home_1_copy,
        activeIcon: Iconsax.home_1,
        screen: isStudent
            ? const StudentHomeScreen()
            : const DriverHomeScreen(),
      ),
      NavItemData(
        label: 'Search',
        icon: Iconsax.search_normal_1_copy,
        activeIcon: Iconsax.search_normal_1,
        screen: isStudent
            ? const StudentSearchScreen()
            : const DriverSearchScreen(),
      ),
      NavItemData(
        label: 'Notification',
        icon: Iconsax.notification_copy,
        activeIcon: Iconsax.notification,
        screen: const NotificationScreen(),
      ),
      NavItemData(
        label: 'Profile',
        icon: Iconsax.user_copy,
        activeIcon: Iconsax.user,
        screen: const ProfileScreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController(), permanent: true);
    final navItems = _getNavItems(role);

    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: navItems.map((e) => e.screen).toList(),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.md,
                vertical: AppSizes.sm,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  navItems.length,
                  (index) => _NavItem(
                    label: navItems[index].label,
                    icon: navItems[index].icon,
                    activeIcon: navItems[index].activeIcon,
                    isSelected: controller.selectedIndex.value == index,
                    onTap: () => controller.selectedIndex.value = index,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final IconData activeIcon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = isSelected
        ? AppColors.primary
        : AppColors.textDark.withValues(alpha: 0.6);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.sm,
          vertical: AppSizes.xs,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSelected ? activeIcon : icon,
              size: AppSizes.iconMd,
              color: color,
            ),
            const SizedBox(height: AppSizes.xs),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: color,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
}

class NavItemData {
  const NavItemData({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.screen,
  });

  final String label;
  final IconData icon;
  final IconData activeIcon;
  final Widget screen;
}
