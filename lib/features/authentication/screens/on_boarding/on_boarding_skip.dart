import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/devices.dart';
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: TextButton(onPressed: (){
            OnBoardingController.instance.skipPage();
          },child: const Text('Skip'),),
        ));
  }
}