import 'package:flutter/material.dart';

import '../../../core/constants/colors/app_colors.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer(
      {super.key,
      this.child,
      this.color = AppColors.primary3,
      this.border,
      this.height,
      this.radius = 8,
      this.width});

  final Widget? child;
  final double? width;
  final Color color;
  final Border? border;
  final double? height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      clipBehavior: Clip.hardEdge,
      height: height,
      decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
