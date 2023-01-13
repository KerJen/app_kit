import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@freezed
class WeatherDescription with _$WeatherDescription {
  const factory WeatherDescription({
  @JsonKey(name: "main") required String status,
  required String description,
  }) = _WeatherDescription;


  factory WeatherDescription.fromJson(Map<String, Object?> json) => _$WeatherDescriptionFromJson(json);
}
