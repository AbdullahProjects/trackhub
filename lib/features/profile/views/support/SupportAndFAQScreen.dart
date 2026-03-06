import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackhub/common/widgets/header/ScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class SupportAndFAQScreen extends StatelessWidget {
  const SupportAndFAQScreen({super.key});

  static const _introText =
      'TrackHub helps you track buses in real time, so you always know when '
      'your bus will arrive. Whether you are a student, parent, or driver, '
      'our app keeps you informed about bus locations, routes, and schedules.\n\n'
      'If you have questions or need help, check the FAQs below. For further '
      'assistance, you can reach out to our support team through the feedback '
      'options in the app.';

  static const _faqItems = [
    (
      'Q:1',
      'How do I track my bus in real time?',
      'Open the app and go to the Home screen. Select your bus from the list to view its live location on the map. Tap "Track Live" to see real-time updates as the bus moves along its route.',
    ),
    (
      'Q:2',
      'Why is my bus location not updating?',
      'Bus location updates depend on GPS and network connectivity. If the location seems stuck, check your internet connection. The driver\'s device must also have a stable connection for live tracking to work.',
    ),
    (
      'Q:3',
      'How do I find my organization code?',
      'Your organization code is provided by your school or transport administrator when you sign up. If you don\'t have it, contact your school office or the person who manages bus transport for your institution.',
    ),
    (
      'Q:4',
      'Can parents track their child\'s bus?',
      'Yes. Parents can create an account and link to their child\'s bus using the organization code. Once linked, you can track the bus in real time and receive notifications about arrival times.',
    ),
    (
      'Q:5',
      'How do I report an issue with a bus or driver?',
      'Use the "Send Feedback via Email" option in the Rate App or Support section to report issues. Include your bus number, route, and a description of the problem so we can assist you quickly.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreenHeader(title: 'Support & FAQs'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _introText,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.textDark),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            ..._faqItems.map(
              (item) => _FaqTile(
                questionPrefix: item.$1,
                question: item.$2,
                answer: item.$3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FaqTile extends StatefulWidget {
  const _FaqTile({
    required this.questionPrefix,
    required this.question,
    required this.answer,
  });

  final String questionPrefix;
  final String question;
  final String answer;

  @override
  State<_FaqTile> createState() => _FaqTileState();
}

class _FaqTileState extends State<_FaqTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.white
        : AppColors.black;

    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            leading: null,
            onExpansionChanged: (expanded) =>
                setState(() => _isExpanded = expanded),
            trailing: Icon(
              !_isExpanded
                  ? FontAwesomeIcons.chevronRight
                  : FontAwesomeIcons.chevronDown,
              size: AppSizes.iconSm,
              color: AppColors.textDark,
            ),
            title: Row(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.questionPrefix} ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.question,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSizes.md,
                  bottom: AppSizes.md,
                  top: AppSizes.xs,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.answer,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: AppColors.textDark),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(height: AppSizes.dividerHeight, color: AppColors.textLight),
      ],
    );
  }
}
