import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    @JsonKey(name: 'name') required String name,
    required double lat,
    required double lon,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, Object?> json) => _$CityModelFromJson(json);
}
