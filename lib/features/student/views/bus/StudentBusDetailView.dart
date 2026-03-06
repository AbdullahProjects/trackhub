import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/features/student/widgets/BusInfoCardWidget.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class StudentBusDetailView extends StatelessWidget {
  const StudentBusDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenHeader(title: "Bus Information"),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.spaceBtwItems),
              // Bus illustration
              Center(
                child: Image.asset(
                  AppImages.busIllustration,
                  fit: BoxFit.contain,
                  width: DeviceUtility.getScreenWidth() * 0.7,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Bus Information header
              Text(
                'Bus Information',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Driver/Bus details card
              BusInfoCard(showBusDetailViewText: false),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Bus specifics list
              _BusSpecRow(
                leftLabel: 'Bus Number',
                leftValue: 'HEX 0021',
                rightLabel: 'Seats in Bus',
                rightValue: '40',
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              _BusSpecRow(
                leftLabel: 'Max Speed (KM/H)',
                leftValue: '60',
                rightLabel: 'Total Stops',
                rightValue: '5',
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              _BusSpecRow(
                leftLabel: 'Route',
                leftValue: 'Saddar Cant / UOL',
                rightLabel: 'Bus Condition',
                rightValue: 'Good',
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              _BusSpecRow(
                leftLabel: 'Bus Time',
                leftValue: '7:00am - 9:00am',
                rightLabel: 'Estimate Arrival',
                rightValue: '8:05 am',
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Track Live button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    side: BorderSide(color: AppColors.red),
                  ),
                  child: Text('Track Live'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BusSpecRow extends StatelessWidget {
  const _BusSpecRow({
    required this.leftLabel,
    required this.leftValue,
    required this.rightLabel,
    required this.rightValue,
  });

  final String leftLabel;
  final String leftValue;
  final String rightLabel;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.white
        : AppColors.textDark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                leftLabel,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: textColor),
              ),
              const SizedBox(height: AppSizes.xs),
              Text(
                leftValue,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rightLabel,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: textColor),
              ),
              const SizedBox(height: AppSizes.xs),
              Text(
                rightValue,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
