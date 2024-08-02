import 'package:bimnext_app/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:bimnext_app/util/constants/colors.dart';
import 'package:bimnext_app/util/constants/sizes.dart';
import 'package:bimnext_app/util/device/device_utility.dart';
import 'package:bimnext_app/util/helpers/pricing_function.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}