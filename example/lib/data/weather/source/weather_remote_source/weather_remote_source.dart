import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';

import '../../model/city.dart';
import '../../model/weather.dart';

abstract class WeatherRemoteSource {
  Future<CityModel> getCityByName(String name);
  Future<WeatherModel> getWeatherByCoords({required double lat, required double lon});
}
