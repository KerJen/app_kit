import 'package:app_kit/arch/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_stack/domain/weather/entity/weather_entity.dart';
import 'package:tech_stack/domain/weather/repository/weather_repository.dart';
import 'package:tech_stack/domain/weather/usecase/get_weathers_usecase.dart';

import '../../../mocks/repository/repository_mocks.mocks.dart';

const testCities = ['London', 'Moscow'];

const testLondonEntity = WeatherEntity(
  cityName: 'London',
  description: 'moderate rain',
  temp: 298.48,
  minTemp: 297.56,
  maxTemp: 300.05,
  humidity: 64,
);

const testMoscowEntity = WeatherEntity(
  cityName: 'Moscow',
  description: 'sunny',
  temp: 398.48,
  minTemp: 197.56,
  maxTemp: 300.05,
  humidity: 64,
);

void main() {
  late WeatherRepository mockRepository;
  late GetWeathersUseCase useCase;

  setUp(() {
    mockRepository = MockWeatherRepository();
    useCase = GetWeathersUseCase(mockRepository);
  });

  test('should get weather from weather repository', () async {
    //Arrange
    when(mockRepository.getWeathers(testCities))
        .thenAnswer((_) async => const Right([testLondonEntity, testMoscowEntity]));

    //Act
    final result = await useCase(testCities);

    //Assert
    expect(useCase, isA<FutureUseCase>());
    expect(result, const Right([testLondonEntity, testMoscowEntity]));
    verify(mockRepository.getWeathers(testCities));
    verifyNoMoreInteractions(mockRepository);
  });
}
