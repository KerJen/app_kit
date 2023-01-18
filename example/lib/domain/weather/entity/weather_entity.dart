import 'package:equatable/equatable.dart';
import 'package:tech_stack/core/error/failure.dart';

class WeatherEntity extends Equatable {
  final String cityName;
  final String description;
  final num temp;
  final num maxTemp;
  final num minTemp;
  final int humidity;

  const WeatherEntity({
    required this.cityName,
    required this.description,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.humidity,
  });

  @override
  List<Object?> get props => [cityName, description, temp, maxTemp, minTemp, humidity];
}

class CityNotFoundFailure extends Failure {
  final String name;

  CityNotFoundFailure(this.name);

  @override
  List<Object?> get props => [name];
}

class WrongCoordsFailure extends Failure {
  final double lat;
  final double lon;

  WrongCoordsFailure({required this.lat, required this.lon});

  @override
  List<Object?> get props => [lat, lon];
}
