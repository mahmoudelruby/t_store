import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTab,

  });

  final bool showBorder;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTab,
      child: TCircularContainer(
        padding:const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                image: TImages.clothes,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overLayColor:
                darkMode ? TColors.white : TColors.black,
              ),
            ),
            const   SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerticalIcon(title: 'Nike',brandTextSize: TextSizes.large,),
                  Text('256 Products',overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}