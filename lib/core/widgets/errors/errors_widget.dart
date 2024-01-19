import 'package:flutter/material.dart';

import '../../constants/theming/app_theme.dart';

class ErrorsWidget extends StatelessWidget {
  const ErrorsWidget({
    super.key,
    required this.errorMessage,
    required this.onTap,
  });
  final String errorMessage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: AppTheme.s16w400,
          ),
          const SizedBox(height: 6,),
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onTap,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Tap To Retry',
                style: AppTheme.s16w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
