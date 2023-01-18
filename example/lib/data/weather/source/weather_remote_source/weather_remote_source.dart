import 'package:tech_stack/data/weather/model/city.dart';
import 'package:tech_stack/data/weather/model/weather.dart';

abstract class WeatherRemoteSource {
  Future<CityModel> getCityByName(String name);
  Future<WeatherModel> getWeatherByCoords({required double lat, required double lon});
}
