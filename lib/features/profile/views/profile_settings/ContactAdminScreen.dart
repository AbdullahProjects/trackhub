import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class ContactAdminScreen extends StatelessWidget {
  const ContactAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const ScreenHeader(title: 'Contact Admin'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  'Face an Issue?',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.7),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  'Report it to the admin and we\'ll work to resolve it as soon as possible.',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: isDark ? AppColors.textLight : AppColors.textDark,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                Text('Describe', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  maxLines: 5,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                    hintText: 'text here...',
                    alignLabelWithHint: true,
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
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
