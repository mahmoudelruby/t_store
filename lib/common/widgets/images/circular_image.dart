import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overLayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding=TSizes.sm,

  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overLayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: darkMode ? TColors.black : TColors.white,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: fit,
        image:isNetworkImage?NetworkImage(image):AssetImage(image)as ImageProvider ,
        color: overLayColor,
      ),
    );
  }
}