import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choice_ships.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/common/widgets/texts/product_price.dart';
import 'package:t_store/common/widgets/texts/product_title.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TCircularContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitle(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          const ProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitle(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const ProductTitle(
                title:
                    'This is Description of the Product and it can go up max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              children: [
                TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),
              ],
            )

          ],
        ),
        Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Sizes',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 5,
              children: [
                TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){}),


              ],
            )

          ],
        ),

      ],
    );
  }
}
