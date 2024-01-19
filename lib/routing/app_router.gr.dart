// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:algooru_flutter_assessment/features/home_app/presentation/pages/home_app.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i2;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeApp.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeApp(),
      );
    }
  };
}

/// generated route for
/// [_i1.HomeApp]
class HomeApp extends _i2.PageRouteInfo<void> {
  const HomeApp({List<_i2.PageRouteInfo>? children})
      : super(
          HomeApp.name,
          initialChildren: children,
        );

  static const String name = 'HomeApp';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
