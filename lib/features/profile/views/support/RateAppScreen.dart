import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:trackhub/common/widgets/button/OutlineButtonWidget.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class RateAppScreen extends StatefulWidget {
  const RateAppScreen({super.key});

  @override
  State<RateAppScreen> createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  int _selectedRating = 0;

  static const _ratingLabels = ['Poor', 'Fair', 'Good', 'Great', 'Excellent'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreenHeader(title: 'Rate App'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // App header: Logo + Name
            Image.asset(
              AppImages.headerAppLogo,
              width: 130,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Rating section
            Text(
              'How was your experience?',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: AppSizes.sm),
            Text(
              'Your feedback helps us grow Trackhub and create better experiences for Bus Tracking everywhere.',
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.textDark),
            ),
            const SizedBox(height: AppSizes.lg),

            // Star rating
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                final isSelected = index < _selectedRating;
                return GestureDetector(
                  onTap: () => setState(() => _selectedRating = index + 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.sm,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          isSelected ? Iconsax.star_1 : Iconsax.star,
                          size: AppSizes.iconLg,
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.textLight,
                        ),
                        const SizedBox(height: AppSizes.xs),
                        Text(
                          _ratingLabels[index],
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                color: AppColors.textDark,
                                fontSize: 10,
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Feedback input
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tell us more (optional)',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: AppSizes.sm),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText:
                    'Share what you love about TrackHub or how we can improve...',
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Submit Rating'),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Share button
            SizedBox(
              width: double.infinity,
              child: OutlineIconTextButtonWidget(
                icon: FontAwesomeIcons.share,
                title: 'Share TrackHub with Friends',
                onTap: () {},
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Email feedback button
            SizedBox(
              width: double.infinity,
              child: OutlineIconTextButtonWidget(
                icon: FontAwesomeIcons.envelopeCircleCheck,
                title: 'Send Feedback via Email',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
