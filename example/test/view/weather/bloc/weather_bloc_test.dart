import "package:app_kit/arch/error/failure.dart";
import "package:dartz/dartz.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mockito/mockito.dart";
import "package:tech_stack/domain/weather/entity/weather_entity.dart";
import "package:tech_stack/domain/weather/usecase/get_weathers_usecase.dart";
import "package:tech_stack/view/weather/bloc/weather_bloc.dart";

import "../../../data/weather/model/city_model_test.dart";
import "../../../domain/weather/usecase/get_cities_weather_usecase_test.dart";
import "../../../mocks/usecase/usecase_mocks.mocks.dart";

void main() {
  final cities = [testLondonEntity.cityName, testMoscowEntity.cityName];
  final entities = [testLondonEntity, testMoscowEntity];

  late GetWeathersUseCase mockUsecase;
  late WeatherBloc bloc;

  setUp(() {
    mockUsecase = MockGetWeathersUseCase();
    bloc = WeatherBloc(getWeathers: mockUsecase);
  });

  test("initial state should be WeatherLoading", () async {
    //Assert
    expect(bloc.state, const WeatherState.loading());
  });

  group("GetWeathersUseCase", () {
    test("should return list of WeatherEntity", () async {
      //Arrange
      when(mockUsecase(cities)).thenAnswer((_) async => Right(entities));

      //Act
      bloc.add(WeatherEvent.load(cities: cities));

      //Assert
      expectLater(
        bloc.stream,
        emitsInOrder(
          [const WeatherState.loading(), WeatherState.result(weathers: entities)],
        ),
      );

      await untilCalled(mockUsecase(cities));
      verify(mockUsecase(cities));
    });

    final failureTests = {
      ConnectionFailure(): "no_internet_error",
      UnauthorizedFailure(): "unauthorized_error",
      UnknownFailure(): "unknown_error",
      WrongCoordsFailure(lat: testLondonModel.lat, lon: testLondonModel.lon): "wrong_coords_error",
      CityNotFoundFailure(testLondonModel.name): "city_not_found_error",
    };

    group("Common failures", () {
      failureTests.forEach((Failure key, String message) {
        test("should return $message if $key occured", () async {
          //Arrange
          when(mockUsecase(cities)).thenAnswer((_) async => Left(key));

          //Act
          bloc.add(WeatherEvent.load(cities: cities));

          //Assert
          expectLater(
            bloc.stream,
            emitsInOrder(
              [const WeatherState.loading(), WeatherState.failure(message: message)],
            ),
          );

          await untilCalled(mockUsecase(cities));
          verify(mockUsecase(cities));
        });
      });
    });

    //     test('should throw UnsupportedError on an unsupported failure', () async {
    //       //Arrange
    //       when(mockUsecase(cities)).thenAnswer((_) async => Left(UnsupportedFailure()));

    //       //Act
    // bloc.add(WeatherEvent.load(cities: cities));

    //       //Assert
    //       expectLater( , throwsA(isA<UnsupportedError>()));

    //       await untilCalled(mockUsecase(cities));
    //       verify(mockUsecase(cities));
    //     });
  });
}
