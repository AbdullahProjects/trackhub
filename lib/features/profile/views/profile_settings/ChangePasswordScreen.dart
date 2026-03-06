import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const ScreenHeader(title: 'Change Password'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  'Change Password',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.7),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  'Keep your account secure by updating your password regularly.',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: isDark ? AppColors.textLight : AppColors.textDark,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                Text('Password', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  obscureText: true,
                  autofillHints: const [AutofillHints.newPassword],
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter your new password',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),

                Text(
                  'Confirm Password',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  obscureText: true,
                  autofillHints: const [AutofillHints.newPassword],
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Confirm your new password',
                  ),
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
