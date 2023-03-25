// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tech_stack/core/di/di.dart' as _i10;
import 'package:tech_stack/data/weather/repository/weather_repository_impl.dart'
    as _i7;
import 'package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source.dart'
    as _i4;
import 'package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source_impl.dart'
    as _i5;
import 'package:tech_stack/domain/weather/repository/weather_repository.dart'
    as _i6;
import 'package:tech_stack/domain/weather/usecase/get_weathers_usecase.dart'
    as _i8;
import 'package:tech_stack/view/weather/bloc/weather_bloc.dart' as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i3.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i4.WeatherRemoteSource>(
        () => _i5.WeatherRemoteSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.WeatherRepository>(() =>
        _i7.WeatherRepositoryImpl(remoteSource: gh<_i4.WeatherRemoteSource>()));
    gh.factory<_i8.GetWeathersUseCase>(
        () => _i8.GetWeathersUseCase(gh<_i6.WeatherRepository>()));
    gh.factory<_i9.WeatherBloc>(
        () => _i9.WeatherBloc(getWeathers: gh<_i8.GetWeathersUseCase>()));
    return this;
  }
}

class _$NetworkModule extends _i10.NetworkModule {}
