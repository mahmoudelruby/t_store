import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/roundedimage.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/texts/product_title.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BrandTitleWithVerticalIcon(title: 'Nike'),
                const Flexible(
                    child: ProductTitle(
                      title: 'Black sports shoes',
                      maxLines: 1,
                    )),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Color :',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' Green',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size :',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' UK 88',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]))
              ],
            ))
      ],
    );
  }
}