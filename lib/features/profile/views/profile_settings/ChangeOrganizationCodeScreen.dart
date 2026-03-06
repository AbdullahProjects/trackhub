import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class ChangeOrganizationCodeScreen extends StatelessWidget {
  const ChangeOrganizationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const ScreenHeader(title: 'Change Organization Code'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  'Update Organization Code',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.7),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  'Enter your new organization code to connect with the correct campus network.',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: isDark ? AppColors.textLight : AppColors.textDark,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                Text(
                  'Organization Code',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  initialValue: 'UET-1094-NHU',
                  decoration: const InputDecoration(hintText: 'UET-1094-NHU'),
                ),

                const SizedBox(height: AppSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
