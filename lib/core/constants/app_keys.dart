import 'package:flutter/material.dart';

class AppKeys {
  AppKeys._();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final BuildContext navigatorContext = navigatorKey.currentContext!;
}
