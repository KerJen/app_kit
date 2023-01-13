// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      description: Weather.fromDescription(json['weather'] as List),
      temp: Weather.readTemp(json, 'temp') as num,
      tempMin: Weather.readTempMin(json, 'tempMin') as num,
      tempMax: Weather.readTempMax(json, 'tempMax') as num,
      humidity: Weather.readHumidity(json, 'humidity') as int,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'weather': instance.description,
      'temp': instance.temp,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'humidity': instance.humidity,
    };
