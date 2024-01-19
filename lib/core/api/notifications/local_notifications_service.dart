import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  //Singleton pattern
  static final LocalNotificationService _notificationService =
      LocalNotificationService._();

  factory LocalNotificationService() {
    return _notificationService;
  }

  LocalNotificationService._();

  //instance of FlutterLocalNotificationsPlugin
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    //Initialization Settings for Android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_notification');

    // Initialization Settings for iOS
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    //InitializationSettings for initializing settings for both platforms (Android & iOS)
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin);

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  Future selectNotification(String payload) async {}

  Future<void> showNotification({
    required String title,
    bool enableVibration = false,
    bool playSound = false,
    bool showProgress = false,
    bool onlyAlertOnce = false,
    int progress = 0,
    bool ongoing = false,
    int maxProgress = 100,
    String body = '',
    int notificationId = 0,
  }) async {
    final AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'channel ID',
      'channel name',
      enableVibration: enableVibration,
      showProgress: showProgress,
      ongoing: ongoing,
      onlyAlertOnce: onlyAlertOnce,
      progress: progress,
      maxProgress: maxProgress,
      channelDescription: 'channel description',
      playSound: playSound,
      priority: Priority.high,
      importance: Importance.high,
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails();

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      notificationId,
      title,
      body,
      platformChannelSpecifics,
      payload: 'Notification Payload',
    );
  }

  Future<void> cancelNotifications(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  Future<void> cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}
