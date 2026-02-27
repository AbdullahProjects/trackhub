import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trackhub/features/auth/views/login/LoginScreen.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  static const List<_OnboardingItem> _items = [
    _OnboardingItem(
      image: AppImages.onboardingIllustration1,
      heading: 'Track Your Bus',
      paragraph:
          'Stay informed about your bus location and arrival time. No more waiting or guessing!',
    ),
    _OnboardingItem(
      image: AppImages.onboardingIllustration2,
      heading: 'Real-time Updates',
      paragraph:
          'Get live updates and alerts so you’re always in the loop—wherever you are.',
    ),
    _OnboardingItem(
      image: AppImages.onboardingIllustration3,
      heading: 'Smarter Commute',
      paragraph:
          'Plan your trip better with accurate ETAs and reliable route information in one place.',
    ),
  ];

  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip Button
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginScreen()),
                    child: const Text("Skip"),
                  ),
                ),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Slider (image only)
                  CarouselSlider.builder(
                    carouselController: _carouselController,
                    itemCount: _items.length,
                    itemBuilder: (context, index, _) {
                      final item = _items[index];
                      return Center(
                        child: Image.asset(item.image, fit: BoxFit.contain),
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 0.6,
                      height: DeviceUtility.getScreenWidth() * 0.45,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration: const Duration(
                        milliseconds: 500,
                      ),
                      autoPlayCurve: Curves.easeInOut,
                      onPageChanged: (index, reason) {
                        setState(() => _activeIndex = index);
                      },
                    ),
                  ),

                  const SizedBox(height: AppSizes.spaceBtwSections * 1.2),

                  // Text (state changes; does not slide)
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Text(
                      _items[_activeIndex].heading,
                      key: ValueKey('heading_$_activeIndex'),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Text(
                        _items[_activeIndex].paragraph,
                        key: ValueKey('paragraph_$_activeIndex'),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall?.apply(
                          color: isDark
                              ? AppColors.textLight
                              : AppColors.textDark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            // Dots Indicator and Next Button
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Row(
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: _activeIndex,
                    count: _items.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      expansionFactor: 2,
                      spacing: 8,
                      activeDotColor: AppColors.primary,
                      dotColor: AppColors.textLight,
                    ),
                    onDotClicked: (index) {
                      _carouselController.animateToPage(index);
                      setState(() => _activeIndex = index);
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        final isLast = _activeIndex == _items.length - 1;
                        if (isLast) {
                          Get.offAll(() => const LoginScreen());
                          return;
                        }

                        _carouselController.nextPage();
                      },
                      child: const Text("Next"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingItem {
  final String image;
  final String heading;
  final String paragraph;

  const _OnboardingItem({
    required this.image,
    required this.heading,
    required this.paragraph,
  });
}
