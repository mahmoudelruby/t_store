import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_widget/curved_edge_widget.dart';
import 'package:t_store/common/widgets/icons/cicular_icon.dart';
import 'package:t_store/common/widgets/images/roundedimage.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/bottom_add_to_card.dart';
import 'package:t_store/features/shop/screens/product_details/product_attribute.dart';
import 'package:t_store/features/shop/screens/product_details/product_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/rate_and_share.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar:const BottomAddToCard() ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            ProductImageSlider(),

            ///product details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMetaDate(),
                  ProductAttribute(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///Description
                  SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'This is description for blue nike Sleave veast . There are more things can be add but i am just priciting and nothing else ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: true,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.arrow_right3,
                            size: 14,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
