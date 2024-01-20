import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/product/rating/rating_indicator.dart';
import 'package:t_store/features/shop/screens/product_review/product_rate.dart';
import 'package:t_store/features/shop/screens/product_review/user_review_card.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and review are verified and are from people who use the same type of device that you use '),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///overall product rate
              const OverallProductRaring(),

              const TRatingBarIndicator(rating: 3,),
              Text('12.544',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///user review list
             const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}


