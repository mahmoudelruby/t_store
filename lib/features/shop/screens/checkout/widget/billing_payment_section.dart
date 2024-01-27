import 'package:flutter/material.dart';

import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(title: 'Payment Method',buttonTitle: 'Change',showActionButton: true,onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            TCircularContainer(
              width: 60,
              height: 35,
backgroundColor: THelperFunctions.isDarkMode(context)?TColors.light:TColors.white,
              padding:const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage('assets/images/paypal.png'),fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
