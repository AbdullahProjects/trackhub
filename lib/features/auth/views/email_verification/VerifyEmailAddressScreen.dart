import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/AuthScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class VerifyEmailAddressScreen extends StatelessWidget {
  const VerifyEmailAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      appBar: const AuthScreenHeader(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                "Verify Your Email\nAddress",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.8),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              Text(
                "We’ve sent a verification link to your registered email.",
                style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? AppColors.textLight : AppColors.textDark,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              Text(
                "Please check your inbox and click the link to continue.",
                style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? AppColors.textLight : AppColors.textDark,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  Text(
                    "Didn’t receive the email? ",
                    style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: isDark ? AppColors.textLight : AppColors.textDark,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      foregroundColor: AppColors.primary,
                    ),
                    child: Text(
                      "Resend Link",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.apply(color: AppColors.primary),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Verify'),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: AppColors.primary,
                  ),
                  child: Text(
                    "Resend OTP in 23s",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.apply(color: AppColors.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
