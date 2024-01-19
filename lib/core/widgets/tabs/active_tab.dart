import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';
import '../../constants/theming/app_theme.dart';

class ActiveTab extends StatelessWidget {
  const ActiveTab({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 7,
        ),
        Container(
            alignment: Alignment.center,
            child: FittedBox(
                child: Text(
              title,
              style: AppTheme.s13w600.copyWith(color: AppColors.grey11),
            ))),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}
