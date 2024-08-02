import 'package:bimnext_app/common/widgets/login_sign_up/form_divider.dart';
import 'package:bimnext_app/common/widgets/login_sign_up/social_buttons.dart';
import 'package:bimnext_app/features/authentication/screens/sign_up/widgets/sign_up_form.dart';
import 'package:bimnext_app/util/constants/sizes.dart';
import 'package:bimnext_app/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
