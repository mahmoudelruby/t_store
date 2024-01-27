import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/product/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/product/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/product_price.dart';
import 'package:t_store/utils/constants/sizes.dart';
class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          const  CartItem(),
          if(showAddRemoveButton) const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          if(showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    ProductQuantityWithAddRemoveButton(),
                  ],
                ),
                ProductPriceText(
                  price: '20',
                )
              ],
            )
        ],
      ),
    );
  }
}