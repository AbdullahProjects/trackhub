import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackhub/common/widgets/header/AuthScreenHeader.dart';
import 'package:trackhub/features/auth/views/create_account/CreateAccountScreen.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Login",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.apply(fontSizeFactor: 0.8),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Text(
                  "Welcome back to the app",
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
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Text('Password', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: AppSizes.sm),
                TextFormField(
                  obscureText: true,
                  autofillHints: const [AutofillHints.password],
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBtwItems),

                Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        'Create an account? ',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.apply(color: AppColors.textDark),
                      ),
                      TextButton(
                        onPressed: () =>
                            Get.to(() => const CreateAccountScreen()),
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: AppColors.primary,
                        ),
                        child: Text(
                          'Sign up',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.primary,
                          ),
                        ),
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
