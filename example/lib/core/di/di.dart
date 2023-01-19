import "package:dio/dio.dart";
import "package:get_it/get_it.dart";
import "../../data/weather/repository/weather_repository_impl.dart";
import "../../data/weather/source/weather_remote_source/weather_remote_source.dart";
import "../../data/weather/source/weather_remote_source/weather_remote_source_impl.dart";
import "../../domain/weather/repository/weather_repository.dart";

import "../const.dart";

void initDI() {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
      queryParameters: {"appid": weatherApiKey},
      connectTimeout: 5000,
    );

  final remoteSource = WeatherRemoteSourceImpl(dio);
  GetIt.I.registerSingleton<WeatherRemoteSource>(remoteSource);

  final weatherRepository = WeatherRepositoryImpl(remoteSource: remoteSource);
  GetIt.I.registerSingleton<WeatherRepository>(weatherRepository);
}
