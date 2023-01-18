// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      status: WeatherModel.readStatus(json, 'status') as String,
      description: WeatherModel.readDescription(json, 'description') as String,
      temp: WeatherModel.readTemp(json, 'temp') as num,
      minTemp: WeatherModel.readMinTemp(json, 'minTemp') as num,
      maxTemp: WeatherModel.readMaxTemp(json, 'maxTemp') as num,
      humidity: WeatherModel.readHumidity(json, 'humidity') as int,
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'description': instance.description,
      'temp': instance.temp,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'humidity': instance.humidity,
    };
