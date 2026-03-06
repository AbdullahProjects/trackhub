import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackhub/features/student/views/bus/StudentBusDetailView.dart';
import 'package:trackhub/features/student/widgets/BusInfoCardWidget.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Section(title: 'Favorite', childCount: 1),
              const SizedBox(height: AppSizes.spaceBtwItems),
              _Section(title: 'All Buses', childCount: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.childCount});

  final String title;
  final int childCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        ...List.generate(
          childCount,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
            child: BusInfoCard(
              showBusDetailViewText: true,
              onViewBusInfo: () => Get.to(() => StudentBusDetailView()),
            ),
          ),
        ),
      ],
    );
  }
}
