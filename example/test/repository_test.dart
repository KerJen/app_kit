// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tech_stack/const.dart';
import 'package:tech_stack/data/weather/repository/weather_repository.dart';
import 'package:tech_stack/data/weather/repository/weather_repository_impl.dart';

void main() async {
  final options = BaseOptions(
    baseUrl: BASE_URL,
    queryParameters: {
      "appid": WEATHER_API_KEY,
    },
  );
  final dio = Dio(options);
  final weatherRepository = WeatherRepositoryImpl(dio: dio);

  test("London name in russian", () async {
    final city = await weatherRepository.getCityByName("London");
    expect(city.name, "Лондон");
  });

  final result = await weatherRepository.getCitiesWeather(cities: ["London"]);
}
