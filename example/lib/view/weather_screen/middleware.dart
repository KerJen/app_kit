import 'package:dio/dio.dart';
import 'package:redux/redux.dart';
import 'package:tech_stack/data/weather/model/response/get_city_by_name_response.dart';
import 'package:tech_stack/data/weather/repository/weather_repository.dart';
import 'package:tech_stack/state.dart';
import 'package:tech_stack/view/weather_screen/action.dart';

class WeatherMiddleware implements MiddlewareClass<AppState> {
  final WeatherRepository weatherRepository;

  WeatherMiddleware({required this.weatherRepository});

  @override
  call(Store<AppState> store, action, NextDispatcher next) async {
    if (action is WeatherLoadAction) {
      next(WeatherLoadAction());

      try {
        final results = await weatherRepository.getCitiesWeather(cities: ["London", "Paris", "Amsterdam", "Moscow", "New York", "Washington", "San Francisco"]);

        next(WeatherResultAction(results: results));
      } on CityNotFoundError {
        next(WeatherFailedAction());
      } on DioError {
        next(WeatherFailedAction());
      }
    }
  }
}
