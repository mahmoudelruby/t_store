import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/bottom_add_to_card.dart';
import 'package:t_store/features/shop/screens/product_details/product_attribute.dart';
import 'package:t_store/features/shop/screens/product_details/product_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/rate_and_share.dart';
import 'package:t_store/features/shop/screens/product_review/product_reviews.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            const ProductImageSlider(),

            ///product details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaDate(),
                  const ProductAttribute(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///Description
                  const SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
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
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: true,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: Icon(
                            Iconsax.arrow_right3,
                            size: 14,
                            color: THelperFunctions.isDarkMode(context)
                                ? TColors.light
                                : TColors.black,
                          ))
                    ],
                  ),
                  const SizedBox(
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
