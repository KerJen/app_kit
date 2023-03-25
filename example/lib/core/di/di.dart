import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() => Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
      queryParameters: {'appid': weatherApiKey},
      connectTimeout: 5000,
    );
}
