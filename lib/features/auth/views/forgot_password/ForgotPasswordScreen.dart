import 'package:flutter/material.dart';
import 'package:trackhub/common/widgets/header/AuthScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const AuthScreenHeader(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  "Forgot Password",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.8),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  "Enter your registered email address to reset your password.",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.apply(color: AppColors.textDark),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                Text(
                  'Email address',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: const [AutofillHints.email],
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Password reset'),
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
