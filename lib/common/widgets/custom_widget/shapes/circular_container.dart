import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer(
      {super.key,
      this.width,
      this.height,
      this.padding,
      this.radius = TSizes.cardRadiusLg,
      this.child,
      this.backgroundColor = TColors.white,
      this.margin,
      this.showBorder = false,
      this.borderColor = TColors.borderPrimary});
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
