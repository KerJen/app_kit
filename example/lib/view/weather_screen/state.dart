import 'package:app_kit/structures/pair.dart';
import 'package:tech_stack/data/weather/model/city.dart';
import 'package:tech_stack/data/weather/model/weather/weather.dart';

abstract class WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherFailedState extends WeatherState {}

class WeatherResultState extends WeatherState {
  final List<Pair<City, Weather>> results;

  WeatherResultState({
    required this.results,
  });
}
