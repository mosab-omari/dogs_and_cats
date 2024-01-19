import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';
import '../../constants/theming/app_theme.dart';
import 'active_tab.dart';

class GradientTab extends StatelessWidget {
  const GradientTab({
    super.key,
    required this.active,
    required this.title,
  });

  final bool active;
  final String title;

  @override
  Widget build(BuildContext context) {
    return active
        ? ActiveTab(title: title)
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 7,
              ),
              FittedBox(
                  child: Text(
                title,
                style: AppTheme.s13w400.copyWith(color: AppColors.grey8),
              )),
              const SizedBox(
                height: 7,
              )
            ],
          );
  }
}
