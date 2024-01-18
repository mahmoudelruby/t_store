import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_widget/curved_edge_widget.dart';

import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/common/widgets/tiles/setting_menu_tile.dart';
import 'package:t_store/common/widgets/tiles/user_profile_tiles.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';

import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeWidget(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account ',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                 UserProfileTile(onTap: ()=> Get.to(()=>const ProfileScreen())),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subtitle: 'Set Shopping delivery '),
                  const SettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My cart',
                      subtitle: 'Add remove products and move to checkout '),
                  const SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My orders',
                    subtitle: 'In-progress and completed orders',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank account',
                    subtitle: 'withdraw balance to registered account  ',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'list of all discounted coupons ',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message  ',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.security,
                    title: 'Account Privacy',
                    subtitle: ',ange data usage and connected accounts ',
                  ),

                  ///app settings
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                      title: 'App settings', showActionButton: false),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'upload data to your cloud firebase ',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'set recommendation based on location ',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image quality',
                    subtitle: 'set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  ///logout button
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections * 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
