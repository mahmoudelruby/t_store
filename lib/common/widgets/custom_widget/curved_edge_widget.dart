import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/circular_container.dart';
import 'package:t_store/common/widgets/custom_widget/shapes/curved_edge.dart';
import 'package:t_store/utils/constants/colors.dart';
class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    required this.child
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 320,
          child: Stack(
            children: [
              Positioned(
                  top: -100,
                  right: -250,
                  child: TCircularContainer(
                      backgroundColor:
                      TColors.textWhite.withOpacity(.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                      backgroundColor:
                      TColors.textWhite.withOpacity(.1))),
                child
            ],
          ),
        ),
      ),
    );
  }
}
