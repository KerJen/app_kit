// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
    };
