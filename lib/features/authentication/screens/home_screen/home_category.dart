import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/home_screen/vertical_image_categories.dart';
import 'package:t_store/utils/constants/image_strings.dart';
class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImage(
            image: TImages.sports,
            title: 'furniture',
            onTap: () {},
          );
        },
      ),
    );
  }
}