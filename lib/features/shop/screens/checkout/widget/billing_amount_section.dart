import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
       const SizedBox(height: TSizes.spaceBtwItems/2,),

        ///shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$8.0',style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
      const  SizedBox(height: TSizes.spaceBtwItems/2,),

        ///tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
       const SizedBox(height: TSizes.spaceBtwItems/2,),

        ///order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$220',style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

      ],
    );
  }
}
