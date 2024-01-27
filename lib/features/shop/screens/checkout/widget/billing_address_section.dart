import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';
class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){},),
        Text('Mahmoud Elruby',style: Theme.of(context).textTheme.bodyLarge,),
        Row(children: [
          const Icon(Icons.phone,color: Colors.grey,size: 16,),
          const SizedBox(width: TSizes.spaceBtwItems,),
          Text('(+20) 101 5114 519',style: Theme.of(context).textTheme.bodyMedium,)
        ],),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(children: [
          const Icon(Icons.location_history,color: Colors.grey,size: 16,),
          const SizedBox(width: TSizes.spaceBtwItems,),
          Text('79 eleshriny st, Ismailia, Egypt ',softWrap: true,style: Theme.of(context).textTheme.bodyMedium,)
        ],),
      ],
    );
  }
}
