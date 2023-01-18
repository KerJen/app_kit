import 'package:app_kit/arch/error/exception.dart';
import 'package:app_kit/arch/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_stack/data/weather/repository/weather_repository_impl.dart';
import 'package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source.dart';
import 'package:tech_stack/domain/weather/entity/weather_entity.dart';
import 'package:tech_stack/domain/weather/repository/weather_repository.dart';

import '../../../domain/weather/usecase/get_cities_weather_usecase_test.dart';
import '../../../mocks/source/source_mocks.mocks.dart';
import '../model/city_model_test.dart';
import '../model/weather_model_test.dart';

void main() {
  late WeatherRemoteSource mockSource;
  late WeatherRepository repository;

  setUp(() {
    mockSource = MockWeatherRemoteSource();
    repository = WeatherRepositoryImpl(remoteSource: mockSource);
  });

  group("gewWeathers", () {
    setUp(() {
      when(mockSource.getCityByName(testLondonEntity.cityName)).thenAnswer((_) async => testLondonModel);
      when(mockSource.getCityByName(testMoscowEntity.cityName)).thenAnswer((_) async => testMoscowModel);
      when(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon))
          .thenAnswer((_) async => testLondonWeatherModel);
      when(mockSource.getWeatherByCoords(lat: testMoscowModel.lat, lon: testMoscowModel.lon))
          .thenAnswer((_) async => testMoscowWeatherModel);
    });

    test('should return a weather list with one entity', () async {
      //Act
      final result =
          ((await repository.getWeathers([testLondonEntity.cityName])) as Right<Failure, List<WeatherEntity>>).value;

      //Assert
      expect(result, [testLondonEntity]);
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verify(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon));
      verifyNoMoreInteractions(mockSource);
    });

    test('should return a weather list', () async {
      //Act
      final result =
          ((await repository.getWeathers([testLondonEntity, testMoscowEntity].map((e) => e.cityName).toList()))
                  as Right<Failure, List<WeatherEntity>>)
              .value;

      //Assert
      expect(result, [testLondonEntity, testMoscowEntity]);
      for (final entity in [testLondonModel, testMoscowModel]) {
        verify(mockSource.getCityByName(entity.name));
        verify(mockSource.getWeatherByCoords(lat: entity.lat, lon: entity.lon));
      }
      verifyNoMoreInteractions(mockSource);
    });
  });


  //TODO: Implement parametrized tests
  group("ConnectionException", () {
    test('should return ConnectionFailure if getCityByName throwed ConnectionException', () async {
      //Arrange
      when(mockSource.getCityByName("London")).thenThrow(ConnectionException());

      //Act
      final result = await repository.getWeathers([testLondonEntity.cityName]);

      //Assert
      expect(result, Left<Failure, List<WeatherEntity>>(ConnectionFailure()));
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verifyNoMoreInteractions(mockSource);
    });

    test('should return ConnectionFailure if getWeatherByCoords throwed ConnectionException', () async {
      //Arrange
      when(mockSource.getCityByName(testLondonEntity.cityName)).thenAnswer((_) async => testLondonModel);
      when(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon))
          .thenThrow(ConnectionException());

      //Act
      final result = await repository.getWeathers([testLondonEntity.cityName]);

      //Assert
      expect(result, Left(ConnectionFailure()));
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verify(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon));
      verifyNoMoreInteractions(mockSource);
    });
  });

  test('should return CityNotFoundFailure if getCityByName throwed NotFoundException', () async {
    //Arrange
    when(mockSource.getCityByName("Zerzura")).thenThrow(NotFoundException());

    //Act
    final result = await repository.getWeathers(["Zerzura"]);

    //Assert
    expect(result, Left(CityNotFoundFailure("Zerzura")));
    verify(mockSource.getCityByName("Zerzura"));
    verifyNoMoreInteractions(mockSource);
  });

  test('should return WrongCoordsFailure if getWeatherByCoords throwed WrongFormatException', () async {
    //Arrange
    when(mockSource.getCityByName(testLondonEntity.cityName)).thenAnswer((_) async => testLondonModel);
    when(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon))
        .thenThrow(WrongFormatException());

    //Act
    final result = await repository.getWeathers([testLondonEntity.cityName]);

    //Assert
    expect(result, Left(WrongCoordsFailure(lat: testLondonModel.lat, lon: testLondonModel.lon)));
    verify(mockSource.getCityByName(testLondonEntity.cityName));
    verify(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon));
    verifyNoMoreInteractions(mockSource);
  });

  group("UnknownException", () {
    test('should return UnknownFailure if getCityByName throwed UnknownException', () async {
      //Arrange
      when(mockSource.getCityByName(testLondonEntity.cityName)).thenThrow(UnknownException());

      //Act
      final result = await repository.getWeathers([testLondonEntity.cityName]);

      //Assert
      expect(result, Left(UnknownFailure()));
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verifyNoMoreInteractions(mockSource);
    });

    test('should return UnknownFailure if getWeatherByCoords throwed UnknownException', () async {
      //Arrange
      when(mockSource.getCityByName(testLondonEntity.cityName)).thenAnswer((_) async => testLondonModel);
      when(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon))
          .thenThrow(UnknownException());

      //Act
      final result = await repository.getWeathers([testLondonEntity.cityName]);

      //Assert
      expect(result, Left(UnknownFailure()));
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verify(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon));
      verifyNoMoreInteractions(mockSource);
    });
  });

  group("UnauthorizedException", () {
    test('should return UnauthorizedFailure if getCityByName throwed UnauthorizedException', () async {
      //Arrange
      when(mockSource.getCityByName(testLondonEntity.cityName)).thenThrow(UnauthorizedException());

      //Act
      final result = await repository.getWeathers([testLondonEntity.cityName]);

      //Assert
      expect(result, Left(UnauthorizedFailure()));
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verifyNoMoreInteractions(mockSource);
    });

    test('should return UnauthorizedFailure if getWeatherByCoords throwed UnauthorizedException', () async {
      //Arrange
      when(mockSource.getCityByName(testLondonEntity.cityName)).thenAnswer((_) async => testLondonModel);
      when(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon))
          .thenThrow(UnauthorizedException());

      //Act
      final result = await repository.getWeathers([testLondonEntity.cityName]);

      //Assert
      expect(result, Left(UnauthorizedFailure()));
      verify(mockSource.getCityByName(testLondonEntity.cityName));
      verify(mockSource.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon));
      verifyNoMoreInteractions(mockSource);
    });
  });
}
