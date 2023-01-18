import 'package:app_kit/arch/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tech_stack/domain/weather/entity/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, List<WeatherEntity>>> getWeathers(List<String> cities);
}
