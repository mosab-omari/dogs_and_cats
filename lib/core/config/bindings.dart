import 'package:algooru_flutter_assessment/core/api/notifications/local_notifications_service.dart';
import 'package:algooru_flutter_assessment/core/config/app_config.dart';
import 'package:flutter/cupertino.dart';

class Bindings {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppConfig.init(configType: ConfigType.release);
    await LocalNotificationService().init();
  }
}
