import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_widget/curved_edge_widget.dart';
import 'package:t_store/common/widgets/icons/cicular_icon.dart';
import 'package:t_store/common/widgets/images/roundedimage.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
        child: Container(
          color: darkMode ? TColors.darkerGrey : TColors.light,
          child: Stack(
            children: [
             const TAppBar(
                showBackArrow: true,
                actions: [
                  CircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  )
                ],
              ),
             const SizedBox(
                height: 280,
                child: Padding(
                  padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                    child:
                    Image(width: 200, image: AssetImage(TImages.productImage1)),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                left: 10,
                bottom: 30,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics:const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (_, index) => RoundedImage(
                          width: 80,
                          border: Border.all(color: TColors.primary),
                          padding:const EdgeInsets.all(TSizes.sm),
                          backgroundColor: darkMode ? TColors.dark : TColors.white,
                          imageUrl: TImages.productImage1),
                      separatorBuilder: (_, __) =>const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      itemCount: 4),
                ),
              ),
            ],
          ),
        ));
  }
}