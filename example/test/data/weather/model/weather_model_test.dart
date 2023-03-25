import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tech_stack/data/weather/model/weather.dart';

import '../../../fixture/fixture_reader.dart';

const fixtureReader = FixtureReader(basePath: 'test/fixture');
const testLondonWeatherModel = WeatherModel(
  status: 'Rain',
  description: 'moderate rain',
  temp: 298.48,
  minTemp: 297.56,
  maxTemp: 300.05,
  humidity: 64,
);

const testRULondonWeatherModel = WeatherModel(
  status: 'Дождь',
  description: 'преимущественно дождь',
  temp: 298.48,
  minTemp: 297.56,
  maxTemp: 300.05,
  humidity: 64,
);

const testMoscowWeatherModel = WeatherModel(
  status: 'Sun',
  description: 'sunny',
  temp: 398.48,
  minTemp: 197.56,
  maxTemp: 300.05,
  humidity: 64,
);

const testRuMoscowWeatherModel = WeatherModel(
  status: 'Солнце',
  description: 'солнечно',
  temp: 398.48,
  minTemp: 197.56,
  maxTemp: 300.05,
  humidity: 64,
);

void main() {
  test('should return valid model object by fromJson', () async {
    //Arrange
    final jsonMap = jsonDecode(fixtureReader.read('en_weather_model.json'));

    //Act
    final result = WeatherModel.fromJson(jsonMap);

    //Assert
    expect(result, testLondonWeatherModel);
  });
}
