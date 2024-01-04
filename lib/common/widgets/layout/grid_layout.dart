import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
class GridViewLayout extends StatelessWidget {
  const GridViewLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent=220,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridviewSpacing,
          crossAxisSpacing: TSizes.gridviewSpacing,
          mainAxisExtent: mainAxisExtent),
      itemBuilder: itemBuilder,
    );
  }
}