import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:tech_stack/data/weather/repository/weather_repository.dart';
import 'package:tech_stack/data/weather/repository/weather_repository_impl.dart';
import 'package:tech_stack/reducer.dart';
import 'package:tech_stack/state.dart';
import 'package:tech_stack/view/common/style/colors.dart';
import 'package:tech_stack/view/weather_screen/middleware.dart';
import 'package:tech_stack/view/weather_screen/state.dart';
import 'package:tech_stack/view/weather_screen/weather_screen.dart';

import 'const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Store<AppState> store;

  @override
  void initState() {
    final dio = _createDioInstance();
    GetIt.I.registerSingleton<Dio>(dio);

    final weatherRepository = WeatherRepositoryImpl(dio: dio);
    GetIt.I.registerSingleton<WeatherRepository>(weatherRepository);
    final weatherMiddleware = WeatherMiddleware(weatherRepository: weatherRepository);

    store = _createStoreInstance(weatherMiddleware: weatherMiddleware);

    super.initState();
  }

  Store<AppState> _createStoreInstance({
    required WeatherMiddleware weatherMiddleware,
  }) =>
      Store<AppState>(
        appReducer,
        initialState: AppState(weatherState: WeatherLoadingState()),
        middleware: [
          weatherMiddleware,
        ],
      );

  Dio _createDioInstance() {
    final options = BaseOptions(
      baseUrl: BASE_URL,
      queryParameters: {
        "appid": WEATHER_API_KEY,
      },
      connectTimeout: 5000,
      receiveTimeout: 5000
    );

    return Dio(options);
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light, // 2
          ),
          iconTheme: const IconThemeData(
            color: whiteColor,
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: accentColor),
        ),
        home: const WeatherScreen(),
      ),
    );
  }
}
