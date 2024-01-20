import 'package:algooru_flutter_assessment/core/config/app_config.dart';
import 'package:algooru_flutter_assessment/core/constants/colors/app_colors.dart';
import 'package:algooru_flutter_assessment/core/utils/shared_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../utils/notifications/local_notifications_service.dart';

class Bindings {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppConfig.init(configType: ConfigType.release);
    await LocalNotificationService().init();
    await SharedStorage.init();
    EasyLoading.instance
      ..displayDuration = const Duration(seconds: 1)
      ..indicatorType = EasyLoadingIndicatorType.pulse
      ..contentPadding = EdgeInsets.zero
      ..loadingStyle = EasyLoadingStyle.light
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..indicatorColor = Colors.transparent
      ..maskColor = AppColors.primary2
      ..userInteractions = true
      ..dismissOnTap = false;
  }
}
