import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('change profile picture'))
                  ],
                ),
              ),

              ///details
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),

              ProfileMenu(onPressed: () {}, title: 'Name', value: 'Mahmoud'),

              ProfileMenu(
                  onPressed: () {},
                  title: 'User Name',
                  value: 'Mahmoud_Elruby'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: 'Personal information',
                showActionButton: false,
              ),
              ProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  icon: Iconsax.copy,
                  value: '95643'),
              ProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'elruby71@gmail.com'),
              ProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: '+201015114519'),
              ProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              ProfileMenu(
                  onPressed: () {}, title: 'Date Of Birth', value: '1/2/1998'),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account ',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
