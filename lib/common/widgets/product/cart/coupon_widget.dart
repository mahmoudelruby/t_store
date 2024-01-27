import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      showBorder: true,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.dark
          : TColors.white,
      padding:const EdgeInsets.only(
          top: TSizes.sm,
          bottom: TSizes.sm,
          right: TSizes.sm,
          left: TSizes.md),
      child: Row(
        children: [
          ///textField
          Flexible(
            child: TextFormField(
              decoration:const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          /// Button
          SizedBox(width: 80,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  foregroundColor: THelperFunctions.isDarkMode(context)? TColors.white.withOpacity(.5):TColors.dark.withOpacity(.5),
                  backgroundColor: Colors.grey.withOpacity(.2),
                  side: BorderSide(color: Colors.grey.withOpacity(.1))
              ),
              child:const Text('Apply'),
            ),)
        ],
      ),
    );
  }
}