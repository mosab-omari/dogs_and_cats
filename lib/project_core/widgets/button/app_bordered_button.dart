import 'package:flutter/material.dart';

import '../../../core/constants/colors/app_colors.dart';
import 'app_button.dart';
import 'button_text.dart';

class AppBorderedButton extends StatelessWidget {
  const AppBorderedButton({
    super.key,
    this.height = 56,
    this.text,
    required this.onTap,
    this.textColor = AppColors.black,
    this.child,
    this.borderWidth,
    this.border,
    this.borderColor,
    this.radius,
  });

  final double height;
  final ButtonText? text;
  final void Function() onTap;
  final Color textColor;
  final Widget? child;
  final double? borderWidth;
  final Border? border;
  final Color? borderColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      radius: radius ?? 8,
      height: height,
      color: AppColors.grey1,
      onTap: onTap,
      border: border ??
          Border.all(
            color: borderColor ?? AppColors.grey2,
            width: borderWidth ?? 1.0,
          ),
      child: child ?? text,
    );
  }
}
