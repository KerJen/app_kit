// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:tech_stack/view/info/info_screen.dart' as _i2;
import 'package:tech_stack/view/weather/weather_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    WeatherRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.WeatherScreen(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.InfoScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          WeatherRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          InfoRoute.name,
          path: '/info',
        ),
      ];
}

/// generated route for
/// [_i1.WeatherScreen]
class WeatherRoute extends _i3.PageRouteInfo<void> {
  const WeatherRoute()
      : super(
          WeatherRoute.name,
          path: '/',
        );

  static const String name = 'WeatherRoute';
}

/// generated route for
/// [_i2.InfoScreen]
class InfoRoute extends _i3.PageRouteInfo<void> {
  const InfoRoute()
      : super(
          InfoRoute.name,
          path: '/info',
        );

  static const String name = 'InfoRoute';
}
