import 'package:flutter/material.dart';
import 'package:trackhub/common/styles/BoxShadowStyles.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

/// Reusable notification card with heading, description, and timestamp.
class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.heading,
    required this.description,
    required this.timestamp,
  });

  final String heading;
  final String description;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.white
        : AppColors.black;

    return Container(
      padding: const EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
        boxShadow: [BoxShadowStyles.sm],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            description,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: AppColors.textDark),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppSizes.sm),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              timestamp,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.textDark,
                fontSize: AppSizes.fontSizeXs,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
