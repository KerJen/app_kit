import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tech_stack/data/weather/model/city.dart';

import '../../../fixture/fixture_reader.dart';


const testLondonModel = CityModel(name: "London", lat: 51.5085, lon: -0.1257);
const testMoscowModel = CityModel(name: "Moscow", lat: 4.3, lon: 12.5);

void main() {
  test('should return valid model object by fromJson', () async {
    //Arrange
    final jsonMap = jsonDecode(fixtureReader.read("city_model.json"));

    //Act
    final result = CityModel.fromJson(jsonMap);

    //Assert
    expect(result, testLondonModel);
  });
}
