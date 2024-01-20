import 'package:algooru_flutter_assessment/core/config/app_config.dart';
import 'package:algooru_flutter_assessment/core/utils/shared_storage.dart';
import 'package:flutter/cupertino.dart';

import '../utils/notifications/local_notifications_service.dart';

class Bindings {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppConfig.init(configType: ConfigType.release);
    await LocalNotificationService().init();
    await SharedStorage.init();
  }
}
