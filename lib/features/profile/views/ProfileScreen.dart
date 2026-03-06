import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/features/auth/views/login/LoginScreen.dart';
import 'package:trackhub/features/profile/views/legal/PrivacyPolicyScreen.dart';
import 'package:trackhub/features/profile/views/legal/TermsConditionsScreen.dart';
import 'package:trackhub/features/profile/views/support/RateAppScreen.dart';
import 'package:trackhub/features/profile/views/support/SupportAndFAQScreen.dart';
import 'package:trackhub/features/profile/widgets/ProfileTileWidget.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenHeader(title: "Profile"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            _ProfileHeader(
              userName: 'Abdullah Khan',
              userEmail: 'abdullah.k.kakar@gmail.com',
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            _Section(
              children: [
                ProfileTile(
                  iconImage: AppImages.userIcon,
                  title: 'Change Full name',
                  onTap: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.lockIcon,
                  title: 'Change password',
                  onTap: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.organizationIcon,
                  title: 'Change Organization Code',
                  onTap: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.busIcon,
                  title: 'Contact Admin',
                  onTap: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.themeIcon,
                  title: 'Theme',
                  showArrow: false,
                  trailingWidget: Transform.scale(
                    scale: 0.8,
                    child: SizedBox(
                      height: 20,
                      child: Switch(
                        padding: EdgeInsets.zero,
                        value: _isDarkMode,
                        onChanged: (v) => setState(() => _isDarkMode = v),
                        thumbColor: WidgetStatePropertyAll(AppColors.primary),
                        trackOutlineColor: WidgetStatePropertyAll(
                          AppColors.textLight,
                        ),
                        activeColor: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            _Section(
              title: 'Legal',
              children: [
                ProfileTile(
                  iconImage: AppImages.policyIcon,
                  title: 'Privacy & Policy',
                  onTap: () => Get.to(() => PrivacyPolicyScreen()),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.documentIcon,
                  title: 'Terms & Conditions',
                  onTap: () => Get.to(() => TermsConditionsScreen()),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            _Section(
              title: 'Support',
              children: [
                ProfileTile(
                  iconImage: AppImages.userSpeakIcon,
                  title: 'Support & FAQs',
                  onTap: () => Get.to(() => SupportAndFAQScreen()),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.rateIcon,
                  title: 'Rate App',
                  onTap: () => Get.to(() => RateAppScreen()),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileTile(
                  iconImage: AppImages.infoIcon,
                  title: 'App version',
                  trailingText: '1.2.3',
                  showArrow: false,
                  onTap: null,
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(Iconsax.logout, size: AppSizes.iconSm),
                label: const Text('Logout'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Iconsax.trash,
                  size: AppSizes.iconSm,
                  color: AppColors.red,
                ),
                label: Text(
                  'Delete Account',
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.red,
                  side: const BorderSide(color: AppColors.red),
                  padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.userName, required this.userEmail});

  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: AppColors.textLight,
              child: Text(
                userName.isNotEmpty ? userName[0].toUpperCase() : '?',
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: AppColors.white),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(AppSizes.xs),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.white, width: 2),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: AppSizes.iconSm,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.md),
        Text(
          userName,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.6),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.xs),
        Text(
          userEmail,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: AppColors.textDark),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({this.title, required this.children});

  final String? title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
        ],
        ...children,
      ],
    );
  }
}
