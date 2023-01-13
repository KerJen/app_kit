import 'package:app_kit/structures/pair.dart';
import 'package:tech_stack/data/weather/model/city.dart';
import 'package:tech_stack/data/weather/model/weather/weather.dart';

class WeatherLoadAction {}

class WeatherFailedAction {}

class WeatherResultAction {
  final List<Pair<City, Weather>> results;

  WeatherResultAction({
    required this.results,
  });
}
