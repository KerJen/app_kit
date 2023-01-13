import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_stack/data/weather/model/weather/description.dart';

part 'weather.freezed.dart';

part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: "weather", fromJson: Weather.fromDescription) required WeatherDescription description,
    @JsonKey(readValue: Weather.readTemp) required num temp,
    @JsonKey(readValue: Weather.readTempMin) required num tempMin,
    @JsonKey(readValue: Weather.readTempMax) required num tempMax,
    @JsonKey(readValue: Weather.readHumidity) required int humidity,
  }) = _Weather;

  static WeatherDescription fromDescription(List<dynamic> list) {
    return WeatherDescription.fromJson(list[0]);
  }

  static num readTempMin(Map<dynamic, dynamic> map, _) {
    return map["main"]["temp_min"];
  }

  static num readTempMax(Map<dynamic, dynamic> map, _) {
    return map["main"]["temp_max"] ;
  }

  static num readTemp(Map<dynamic, dynamic> map, _) {
    return map["main"]["temp"];
  }

  static int readHumidity(Map<dynamic, dynamic> map, _) {
    return map["main"]["humidity"];
  }

  factory Weather.fromJson(Map<String, Object?> json) => _$WeatherFromJson(json);
}
