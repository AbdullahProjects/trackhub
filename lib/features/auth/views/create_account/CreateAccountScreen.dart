import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackhub/common/widgets/header/AuthScreenHeader.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
                  "Create Account",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.8),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  "Create your account to get started",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.apply(color: AppColors.textDark),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                Text('Name', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  keyboardType: TextInputType.name,
                  autofillHints: const [AutofillHints.name],
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),

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
                const SizedBox(height: AppSizes.spaceBtwInputFields),

                Text(
                  'Organization Code',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter organization code',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),

                Text('Password', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  obscureText: true,
                  autofillHints: const [AutofillHints.newPassword],
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
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
                    hintText: 'Confirm your password',
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Create account'),
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBtwItems),

                Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: AppColors.textDark),
                      ),
                      TextButton(
                        onPressed: () => Get.back(),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: AppColors.primary,
                        ),
                        child: const Text('Sign In'),
                      ),
                    ],
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
