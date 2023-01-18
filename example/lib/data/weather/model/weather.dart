import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    @JsonKey(readValue: WeatherModel.readStatus) required String status,
    @JsonKey(readValue: WeatherModel.readDescription) required String description,
    @JsonKey(readValue: WeatherModel.readTemp) required num temp,
    @JsonKey(readValue: WeatherModel.readMinTemp) required num minTemp,
    @JsonKey(readValue: WeatherModel.readMaxTemp) required num maxTemp,
    @JsonKey(readValue: WeatherModel.readHumidity) required int humidity,
  }) = _WeatherModel;

  static String readStatus(Map<dynamic, dynamic> map, _) {
    return (map["weather"] as List).first["main"];
  }

  static String readDescription(Map<dynamic, dynamic> map, _) {
    return (map["weather"] as List).first["description"];
  }

  static num readMinTemp(Map<dynamic, dynamic> map, _) {
    return map["main"]["temp_min"];
  }

  static num readMaxTemp(Map<dynamic, dynamic> map, _) {
    return map["main"]["temp_max"];
  }

  static num readTemp(Map<dynamic, dynamic> map, _) {
    return map["main"]["temp"];
  }

  static int readHumidity(Map<dynamic, dynamic> map, _) {
    return map["main"]["humidity"];
  }

  factory WeatherModel.fromJson(Map<String, Object?> json) => _$WeatherModelFromJson(json);
}
