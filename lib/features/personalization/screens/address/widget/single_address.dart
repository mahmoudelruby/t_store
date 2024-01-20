import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectAddress});

  final bool selectAddress;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return TCircularContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectAddress ? TColors.primary.withOpacity(.2) : Colors.transparent,
      borderColor: selectAddress
          ? Colors.transparent
          : darkMode
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 15,
            top: 2,
            child: Icon(
              selectAddress ? Iconsax.tick_circle5 : null,
              color: selectAddress
                  ? darkMode
                      ? TColors.light
                      : TColors.dark.withOpacity(.2)
                  : null,
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(TSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mahmoud Elruby',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: TSizes.sm / 2,
                ),
                const Text(
                  '(+20) 101 511 4519',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: TSizes.sm / 2,
                ),
                const Text(
                  '79 Eleshriny st , Ismailia , Egypt ',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
