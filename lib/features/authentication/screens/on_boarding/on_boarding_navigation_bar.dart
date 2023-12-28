
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:t_store/features/authentication/screens/on_boarding/on_boarding_button.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/devices.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class OnBoardingNavBar extends StatelessWidget {
  const  OnBoardingNavBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark= THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavBar() + .25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect:  ExpandingDotsEffect(
              activeDotColor: dark? TColors.light:TColors.dark, dotHeight: 6),
        ));
  }
}