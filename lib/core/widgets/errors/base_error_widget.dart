import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../constants/theming/app_theme.dart';

class BaseErrorWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String? title;
  final String? subtitle;
  final Widget? icon;

  const BaseErrorWidget(
      {super.key, this.onTap, this.title, this.subtitle, this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: icon,
              ),
              Text(
                title ?? '-',
                textAlign: TextAlign.center,
                style: AppTheme.bodyMedium,
              ),
              Text(
                subtitle ?? 'Tap to retry'.tr(),
                style: AppTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
