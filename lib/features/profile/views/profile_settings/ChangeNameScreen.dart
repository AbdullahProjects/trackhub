import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class ChangeNameScreen extends StatelessWidget {
  const ChangeNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const ScreenHeader(title: 'Change Username'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  'Update Name',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.7),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  'Change your display name to keep your profile up to date.',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: isDark ? AppColors.textLight : AppColors.textDark,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                Text('Full Name', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  keyboardType: TextInputType.name,
                  autofillHints: const [AutofillHints.name],
                  textAlignVertical: TextAlignVertical.center,
                  initialValue: 'Abdullah Shah',
                  decoration: const InputDecoration(hintText: 'Abdullah Shah'),
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
