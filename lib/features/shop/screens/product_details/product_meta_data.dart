import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/texts/product_price.dart';
import 'package:t_store/common/widgets/texts/product_title.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class ProductMetaDate extends StatelessWidget {
  const ProductMetaDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price & sale price
        Row(
          children: [
            ///sale tag
            TCircularContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),

            ///price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///title
        const ProductTitle(title: 'Green Nike Sports shirt '),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///stock status
        const ProductTitle(title: 'status'),
        Text(
          'In stock',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///brand
        Row(
          children: [
            CircularImage(
              image: TImages.clothes,
              width: 32,
              height: 32,
              overLayColor: darkMode ? TColors.white : TColors.black,
            ),
            const BrandTitleWithVerticalIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
