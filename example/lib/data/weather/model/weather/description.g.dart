// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDescription _$$_WeatherDescriptionFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherDescription(
      status: json['main'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_WeatherDescriptionToJson(
        _$_WeatherDescription instance) =>
    <String, dynamic>{
      'main': instance.status,
      'description': instance.description,
    };
