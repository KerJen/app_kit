import 'package:app_kit/arch/error/failure.dart';
import 'package:app_kit/arch/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/weather_repository.dart';

import '../entity/weather_entity.dart';

@injectable
class GetWeathersUseCase extends UseCase<List<WeatherEntity>, List<String>> {
  final WeatherRepository repository;

  GetWeathersUseCase(this.repository);

  @override
  Future<Either<Failure, List<WeatherEntity>>> call(List<String> params) {
    return repository.getWeathers(params);
  }
}
