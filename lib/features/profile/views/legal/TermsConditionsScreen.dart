import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/features/profile/views/legal/PrivacyPolicyScreen.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  static const _lastUpdated = 'January 15, 2025';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenHeader(title: "Terms & Conditions"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Last updated: $_lastUpdated',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textDark,
                  fontSize: AppSizes.fontSizeXs,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            const PolicySection(
              heading: '1. Information We Collect',
              description:
                  'We collect information you provide directly to us, such as when you create an account, use our bus tracking features, or contact us for support.',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const PolicySection(
              heading: '2. How We Use Your Information',
              description:
                  'We use the information we collect to provide, maintain, and improve our services, process transactions, and communicate with you.',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const PolicySection(
              heading: '3. Information Sharing',
              description:
                  'We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described in this policy.',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const PolicySection(
              heading: '4. Data Security',
              description:
                  'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const PolicySection(
              heading: '5. Your Rights',
              description:
                  'You have the right to access, update, or delete your personal information. You may also opt out of certain communications from us.',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const PolicySection(
              heading: '6. Changes to This Policy',
              description:
                  'We may update this privacy policy from time to time. We will notify you of any changes by posting the new policy on this page.',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const PolicySection(
              heading: '7. Contact Us',
              description:
                  'If you have any questions about this privacy policy, please contact us at privacy@trackhub.com',
            ),
            const SizedBox(height: AppSizes.spaceBtwSections * 1.5),
          ],
        ),
      ),
    );
  }
}
