import "package:auto_route/annotations.dart";
import "../../../view/info/info_screen.dart";

import "../../../view/weather/weather_screen.dart";

@AdaptiveAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: <AutoRoute>[
    AutoRoute(page: WeatherScreen, initial: true, path: "/"),
    AutoRoute(page: InfoScreen, path: "/info"),
  ],
)
class $AppRouter {}
