import 'package:flutter/material.dart';

import '../../../core/constants/theming/app_theme.dart';

abstract class IButtonType {
  final TextStyle textStyle;

  const IButtonType(this.textStyle);
}

class ButtonType extends IButtonType {
  static const head = ButtonType(AppTheme.headlineButtonText);
  static const body = ButtonType(AppTheme.bodyButtonText);

  const ButtonType(super.textStyle);
}

class BorderedButtonType extends IButtonType {
  static const head = BorderedButtonType(AppTheme.headlineBorderedButtonText);
  static const body = BorderedButtonType(AppTheme.bodyBorderedButtonText);

  const BorderedButtonType(super.textStyle);
}

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    required this.text,
    this.textStyle,
    this.buttonType = ButtonType.head,
  });

  final TextStyle? textStyle;
  final String text;
  final IButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ?? buttonType.textStyle,
    );
  }
}

class BorderedButtonText extends ButtonText {
  const BorderedButtonText(
      {super.key,
      required super.text,
      super.textStyle,
      this.buttonType = BorderedButtonType.head});

  @override
  final BorderedButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    return ButtonText(
      textStyle: textStyle,
      text: text,
      buttonType: buttonType,
    );
  }
}
