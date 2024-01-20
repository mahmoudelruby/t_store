import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_widget/curved_edge_widget.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/product/product_card_vertical.dart';
import 'package:t_store/common/widgets/search.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/authentication/screens/home_screen/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'home_appbar.dart';
import 'home_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            const CurvedEdgeWidget(
                child: Column(
              children: [
                ///Appbar
                HomeAppBar(),

                /// searchbar
                SearchBarContainer(
                  text: 'Search in Store ',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      ///headline text
                      SectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// categories sections
                      HomeCategories(),
                      SizedBox(height: TSizes.spaceBtwSections,)

                    ],
                  ),
                )
              ],
            )),

            ///body of HomeScreen
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///slider image
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                 SectionHeading(title: 'popular product',onPressed:(){}),
                 const SizedBox(height: TSizes.spaceBtwItems,),
                  GridViewLayout(itemBuilder: (_,index)=>const ProductCardVertical(),itemCount: 8,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


