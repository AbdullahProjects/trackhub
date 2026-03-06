import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackhub/common/styles/BoxShadowStyles.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.iconImage,
    required this.title,
    this.trailingText,
    this.trailingWidget,
    this.onTap,
    this.showArrow = true,
  });

  final String iconImage;
  final String title;
  final String? trailingText;
  final Widget? trailingWidget;
  final VoidCallback? onTap;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).brightness == Brightness.dark
        ? AppColors.white
        : AppColors.textDark;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.md,
          vertical: AppSizes.spaceBtwItems * 1.3,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          boxShadow: [BoxShadowStyles.md],
        ),
        child: Row(
          children: [
            Image.asset(
              iconImage,
              width: AppSizes.iconSm * 0.8,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(width: AppSizes.md),
            Expanded(
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: color),
              ),
            ),
            if (trailingWidget != null) ...[
              trailingWidget!,
            ] else if (trailingText != null) ...[
              Text(
                trailingText!,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppColors.textDark),
              ),
            ],
            if (showArrow) ...[
              if (trailingWidget != null || trailingText != null)
                const SizedBox(width: AppSizes.sm),
              Icon(
                FontAwesomeIcons.chevronRight,
                size: AppSizes.iconSm,
                color: color,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
