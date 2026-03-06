import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:trackhub/features/student/views/bus/StudentBusDetailView.dart';
import 'package:trackhub/features/student/widgets/BusInfoCardWidget.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class StudentSearchScreen extends StatelessWidget {
  const StudentSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ScreenHeader(title: "Search"),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Input Field
              Container(
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
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Search Results
              Text(
                "Recent Searches",
                style: Theme.of(context).textTheme.headlineMedium!.apply(
                  fontSizeFactor: 0.8,
                  fontWeightDelta: 1,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Column(
                spacing: AppSizes.spaceBtwItems,
                children: List.generate(4, (index) {
                  return BusInfoCard(
                    showBusDetailViewText: true,
                    onViewBusInfo: () => Get.to(() => StudentBusDetailView()),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
