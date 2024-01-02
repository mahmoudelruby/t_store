import 'package:flutter/material.dart';

import 'package:t_store/common/widgets/custom_widget/curved_edge_widget.dart';
import 'package:t_store/common/widgets/search.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';

import 'package:t_store/utils/constants/colors.dart';

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
            CurvedEdgeWidget(
                child: Column(
              children: [
                ///Appbar
                const HomeAppBar(),

                /// searchbar
                const SearchBarContainer(
                  text: 'Search in Store ',
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///categories
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      ///headline text
                      const SectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// categories sections
                      HomeCategories()
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
