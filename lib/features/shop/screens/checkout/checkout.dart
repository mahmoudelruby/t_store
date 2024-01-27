import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/common/widgets/product/cart/coupon_widget.dart';
import 'package:t_store/features/shop/screens/cart/widget/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:t_store/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/success_screen/success_screen.dart';
import 'package:t_store/navigation_bar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const CouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TCircularContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                child:const Column(
                  children: [
                    ///pricing
                    BillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Divider
                    Divider(),

                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///payment Method
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///address
                    BillingAddressSection()

                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(()=>
          SuccessScreen(image: 'assets/images/payment_success.png',
              title: 'Payment Success',
              subtitle: 'Your item will be shipped soon !',
              onPressed: ()=> Get.offAll(()=>const NavigationMenu()))),
          child: const Text('Checkout \$256.0 '),
        ),
      ),
    );
  }
}
