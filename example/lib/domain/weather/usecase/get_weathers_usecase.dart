import 'package:dartz/dartz.dart';
import 'package:tech_stack/domain/weather/repository/weather_repository.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../entity/weather_entity.dart';

class GetWeathersUseCase extends UseCase<List<WeatherEntity>, List<String>> {
  final WeatherRepository repository;

  GetWeathersUseCase(this.repository);

  @override
  Future<Either<Failure, List<WeatherEntity>>> call(List<String> params) {
    return repository.getWeathers(params);
  }
}
