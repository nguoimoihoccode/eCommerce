import 'package:bimnext_app/common/styles/spacing_styles.dart';
import 'package:bimnext_app/common/widgets/login_sign_up/form_divider.dart';
import 'package:bimnext_app/common/widgets/login_sign_up/social_buttons.dart';
import 'package:bimnext_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:bimnext_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:bimnext_app/util/constants/sizes.dart';
import 'package:bimnext_app/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Logo, Title & Sub-Title
                const LoginHeader(),

                /// Form
                const LoginForm(),

                /// Divider
                FormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Footer
                const SocialButtons()
              ],
            )),
      ),
    );
  }
}

