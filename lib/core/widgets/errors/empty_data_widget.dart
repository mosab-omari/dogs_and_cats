import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import 'base_error_widget.dart';

class EmptyDataWidget extends StatelessWidget {
  final String? message;

  const EmptyDataWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return BaseErrorWidget(
        onTap: () {},
        title: message ?? 'result_not_found'.tr(),
        subtitle: 'please_try_again_with_another'.tr(),
        icon: Assets.images.general.noData.image());
  }
}
