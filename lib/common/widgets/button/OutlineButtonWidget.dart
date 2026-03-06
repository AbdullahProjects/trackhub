import 'package:flutter/material.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class OutlineIconTextButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const OutlineIconTextButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: AppSizes.iconSm, color: AppColors.primary),
      label: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.bodyLarge!.apply(color: AppColors.primary),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}
