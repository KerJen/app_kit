import 'package:app_kit/app_kit.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../source/weather_remote_source/weather_remote_source.dart';
import '../../../domain/weather/entity/weather_entity.dart';
import '../../../domain/weather/repository/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteSource remoteSource;

  WeatherRepositoryImpl({required this.remoteSource});

  @override
  Future<Either<Failure, List<WeatherEntity>>> getWeathers(List<String> cities) async {
    final List<WeatherEntity> weatherEntities = [];

    for (final cityName in cities) {
      try {
        final cityModel = await remoteSource.getCityByName(cityName);
        try {
          final weatherModel = await remoteSource.getWeatherByCoords(lat: cityModel.lat, lon: cityModel.lon);

          weatherEntities.add(
            WeatherEntity(
              cityName: cityName,
              description: weatherModel.description,
              temp: weatherModel.temp,
              maxTemp: weatherModel.maxTemp,
              minTemp: weatherModel.minTemp,
              humidity: weatherModel.humidity,
            ),
          );
        } on WrongFormatException {
          return Left(WrongCoordsFailure(lat: cityModel.lat, lon: cityModel.lon));
        }
      } on ConnectionException {
        return Left(ConnectionFailure());
      } on NotFoundException {
        return Left(CityNotFoundFailure(cityName));
      } on UnauthorizedException {
        return Left(UnauthorizedFailure());
      } on UnknownException {
        return Left(UnknownFailure());
      }
    }

    return Right(weatherEntities);
  }
}
