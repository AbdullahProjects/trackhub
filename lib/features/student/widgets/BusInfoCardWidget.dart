import 'package:flutter/material.dart';
import 'package:trackhub/common/styles/BoxShadowStyles.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class BusInfoCard extends StatelessWidget {
  final bool showBusDetailViewText;
  const BusInfoCard({
    super.key,
    this.onViewBusInfo,
    this.showBusDetailViewText = false,
  });

  final VoidCallback? onViewBusInfo;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness != Brightness.dark
        ? AppColors.textDark
        : AppColors.textLight;

    return Container(
      padding: const EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
        color: Colors.white,
        boxShadow: [BoxShadowStyles.md],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: Avatar, Driver name, Online status, ID
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: AppColors.primary, width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    AppImages.dummyDriverProfileImage,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: Text(
                            'Saim Ayub',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.apply(color: AppColors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: AppColors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: AppSizes.xs),
                            Text(
                              'Online',
                              style: Theme.of(context).textTheme.labelMedium
                                  ?.copyWith(color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.xs),
                    Text(
                      'ID: 45121212',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: textColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.sm),

          // Middle: Status button + Bus details
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm,
                  vertical: AppSizes.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
                ),
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.inRouteIcon, width: 16),
                    Text(
                      'In route',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: AppColors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSizes.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _DetailRow(
                      iconImage: AppImages.busIcon2,
                      text: 'BUS 01',
                      color: textColor,
                    ),
                    const SizedBox(height: AppSizes.xs),
                    _DetailRow(
                      iconImage: AppImages.numberPlateIcon,
                      text: 'HEX 0021',
                      color: textColor,
                    ),
                    const SizedBox(height: AppSizes.xs),
                    _DetailRow(
                      iconImage: AppImages.locationIcon,
                      text: 'Sadder cant / Punjab University',
                      color: textColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.md),

          // Bottom: View Bus Information link
          if (showBusDetailViewText)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: onViewBusInfo,
                child: Row(
                  spacing: 2,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.busDetailIcon, width: 13),
                    const SizedBox(width: AppSizes.xs),
                    Text(
                      'View Bus Information',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge?.copyWith(color: AppColors.orange),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.iconImage,
    required this.text,
    required this.color,
  });

  final String iconImage;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(iconImage, height: 16, fit: BoxFit.fitHeight),
        const SizedBox(width: AppSizes.sm),
        Expanded(
          child: Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: color),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
