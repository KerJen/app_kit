import 'package:app_kit/structures/pair.dart';
import 'package:tech_stack/data/common/repository/base_repository.dart';
import 'package:tech_stack/data/weather/model/city.dart';
import 'package:tech_stack/data/weather/model/weather/weather.dart';

abstract class WeatherRepository implements BaseRepository {
  Future<List<Pair<City, Weather>>> getCitiesWeather({required List<String> cities});
}
