import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,

    this.color,
    this.backgroundColor,
    this.onPressed,
    required this.iconUnPressed,
    required this.iconPressed,
  });
  final double? width, height, size;
  final IconData iconUnPressed,iconPressed;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : darkMode
                  ? TColors.black.withOpacity(.9)
                  : TColors.white.withOpacity(.9)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(onPressed != null?iconUnPressed:iconPressed,color: color,size: size,),
      ),
    );
  }
}
