import 'package:app_kit/structures/pair.dart';
import 'package:dio/dio.dart';
import 'package:tech_stack/const.dart';
import 'package:tech_stack/data/weather/model/city.dart';
import 'package:tech_stack/data/weather/model/response/get_city_by_name_response.dart';
import 'package:tech_stack/data/weather/model/weather/weather.dart';
import 'package:tech_stack/data/weather/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio dio;

  WeatherRepositoryImpl({required this.dio});

  @override
  Future<List<Pair<City, Weather>>> getCitiesWeather({required List<String> cities}) async {
    final List<Pair<City, Weather>> results = [];

    for (final cityName in cities) {
      final city = await getCityByName(cityName);

      final response = await dio.get(weatherEndpoint, queryParameters: {
        "lat": city.lat,
        "lon": city.lon,
        "units": "metric",
        "lang": "en",
      });

      results.add(Pair(first: city, second: Weather.fromJson(response.data)));
    }

    return results;
  }

  Future<City> getCityByName(String name) async {
    final response = await dio.get(
      geoEndpoint,
      queryParameters: {
        "q": name,
      },
    );

    if (response.statusCode == 200) {
      if ((response.data as List).isEmpty) {
        throw CityNotFoundError();
      }

      return City.fromJson(response.data[0]);
    }

    throw CityNotFoundError();
  }

  @override
  Future<void> close() async {}
}
