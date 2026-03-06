import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/features/notification/widgets/NotificationTile.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const _sampleHeading = 'Route Combined';
  static const _sampleDescription =
      'Route no 02 will be combined with the Route no 01, so all students of route 01 will be seated in route 01.';
  static const _sampleTimestamp = '12:03 pm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenHeader(title: "Notifications"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _NotificationSection(
              title: 'Today',
              tiles: [
                const NotificationTile(
                  heading: _sampleHeading,
                  description: _sampleDescription,
                  timestamp: _sampleTimestamp,
                ),
                const NotificationTile(
                  heading: _sampleHeading,
                  description: _sampleDescription,
                  timestamp: _sampleTimestamp,
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            _NotificationSection(
              title: 'Yesterday',
              tiles: [
                const NotificationTile(
                  heading: _sampleHeading,
                  description: _sampleDescription,
                  timestamp: _sampleTimestamp,
                ),
                const NotificationTile(
                  heading: _sampleHeading,
                  description: _sampleDescription,
                  timestamp: _sampleTimestamp,
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            _NotificationSection(
              title: 'Previous',
              tiles: [
                const NotificationTile(
                  heading: _sampleHeading,
                  description: _sampleDescription,
                  timestamp: _sampleTimestamp,
                ),
                const NotificationTile(
                  heading: _sampleHeading,
                  description: _sampleDescription,
                  timestamp: _sampleTimestamp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NotificationSection extends StatelessWidget {
  const _NotificationSection({required this.title, required this.tiles});

  final String title;
  final List<NotificationTile> tiles;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        ...tiles.map(
          (tile) => Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
            child: tile,
          ),
        ),
      ],
    );
  }
}
