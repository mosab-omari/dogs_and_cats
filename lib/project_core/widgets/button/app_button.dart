import 'package:flutter/material.dart';

import '../../../core/constants/colors/app_colors.dart';
import 'button_text.dart';
import 'button_container.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.child,
    this.color = AppColors.primary2,
    this.text,
    this.enabled = true,
    this.height = 56,
    this.width,
    this.border,
    required this.onTap,
    this.radius,
  });

  final Widget? child;
  final double? width;
  final Color color;
  final ButtonText? text;
  final double height;
  final void Function() onTap;
  final Border? border;
  final double? radius;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: enabled ? onTap : null,
      child: ButtonContainer(
        width: width,
        radius: radius ?? 8,
        height: height,
        border: border,
        color: color,
        child: child ?? text,
      ),
    );
  }
}
