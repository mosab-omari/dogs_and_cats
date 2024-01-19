import 'package:algooru_flutter_assessment/project_core/widgets/button/button_text.dart';
import 'package:flutter/material.dart';

import '../../../../../project_core/widgets/button/app_button.dart';

class DogButton extends StatelessWidget {
  const DogButton({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppButton(
        text: ButtonText(text: 'Click Me!'),
        onTap: onTap,
      ),
    );
  }
}
