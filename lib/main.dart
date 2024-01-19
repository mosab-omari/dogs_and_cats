import 'dart:developer';

import 'package:algooru_flutter_assessment/core/config/bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/theming/app_theme.dart';
import 'routing/app_router.dart';

void main() async {
  try {
    Bindings.init();
    runApp(const ProviderScope(child: App()));
  } catch (e, s) {
    log(e.toString());
    log(s.toString());
    rethrow;
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
        title: 'Dogs and Cats',
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
