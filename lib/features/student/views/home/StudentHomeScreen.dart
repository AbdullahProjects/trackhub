import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/features/student/views/bus/StudentBusDetailView.dart';
import 'package:trackhub/features/student/widgets/BusInfoCardWidget.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Focus.of(context).unfocus(),
      child: Scaffold(
        appBar: ScreenHeader(
          title: "Home",
          backgroundColor: AppColors.primary,
          textColor: AppColors.white,
          trailing: Padding(
            padding: const EdgeInsets.only(right: AppSizes.defaultSpace),
            child: Icon(Iconsax.notification, color: AppColors.white),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              child: Stack(
                children: [
                  Container(
                    height: 64,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    left: AppSizes.defaultSpace,
                    right: AppSizes.defaultSpace,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(
                          AppSizes.inputFieldRadius,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: 'Search by bus number or route',
                          prefixIcon: Icon(
                            Iconsax.search_normal_1_copy,
                            size: AppSizes.iconMd,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(
                    AppSizes.defaultSpace,
                  ).copyWith(top: 0),
                  child: Column(
                    children: [
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      _Section(title: 'Favourite', childCount: 1),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      _Section(title: 'All Buses', childCount: 5),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
          style: Theme.of(context).textTheme.headlineMedium!.apply(
            fontSizeFactor: 0.8,
            fontWeightDelta: 1,
          ),
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
