import 'dart:convert';
import 'dart:ui';

import 'package:app_kit/arch/error/exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_status_code/http_status_code.dart';
import 'package:mockito/mockito.dart';
import 'package:tech_stack/core/const.dart';
import 'package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source.dart';
import 'package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source_impl.dart';

import '../../../mocks/api/api_mocks.mocks.dart';
import '../model/city_model_test.dart';
import '../model/weather_model_test.dart';

void main() {
  late MockDio mockDio;
  late WeatherRemoteSource source;

  setUp(() {
    mockDio = MockDio()
      ..options = BaseOptions(
        baseUrl: baseUrl,
        queryParameters: {
          'appid': weatherApiKey,
          'lang': 'en',
        },
        connectTimeout: 5000,
      );

    source = WeatherRemoteSourceImpl(mockDio);
  });

  test('should perform a GET request in the getCityByName to get a CityModel', () async {
    //Arrange
    when(mockDio.get(geoEndpoint, queryParameters: {'q': 'London'})).thenAnswer(
      (_) async => Response(
        data: jsonDecode("[${fixtureReader.read("city_model.json")}]"),
        requestOptions: RequestOptions(path: ''),
      ),
    );

    //Act
    final result = await source.getCityByName('London');

    //Assert
    expect(result, testLondonModel);
    verify(mockDio.get(geoEndpoint, queryParameters: {'q': 'London'}));
  });

  group('GET request with different localization', () {
    final languages = {
      'en': 'en_weather_model.json',
      'ru': 'ru_weather_model.json',
    };

    languages.forEach((lang, fixturePath) {
      test('should perform a GET request in the getWeatherByCoords to get a WeatherModel in $lang', () async {
        //Arrange
        when(
          mockDio.get(
            weatherEndpoint,
            queryParameters: {
              'lat': testLondonModel.lat,
              'lon': testLondonModel.lon,
              'units': 'metric',
              'lang': lang,
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: jsonDecode(fixtureReader.read(fixturePath)),
            requestOptions: RequestOptions(path: ''),
          ),
        );

        //Act
        final result = await source.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon);

        //Assert
        expect(result, testLondonWeatherModel);
        verify(
          mockDio.get(
            weatherEndpoint,
            queryParameters: {
              'lat': testLondonModel.lat,
              'lon': testLondonModel.lon,
              'units': 'metric',
              'lang': lang,
            },
          ),
        );
      });
    });
  });

  group('Failures', () {
    test('should throw NotFoundException if response array is empty', () async {
      //Arrange
      when(mockDio.get(geoEndpoint, queryParameters: {'q': ''}))
          .thenAnswer((_) async => Response(requestOptions: RequestOptions(path: ''), data: []));

      //Assert
      expect(() => source.getCityByName(''), throwsA(isA<NotFoundException>()));
      verify(mockDio.get(geoEndpoint, queryParameters: {'q': ''}));
    });

    final exceptionsTests = {
      StatusCode.UNAUTHORIZED: isA<UnauthorizedException>(),
      StatusCode.BAD_REQUEST: isA<NotFoundException>(),
    };

    group('getCitybyName', () {
      exceptionsTests.forEach((code, exception) {
        test('should throw $exception if api key is wrong', () async {
          //Arrange
          when(mockDio.get(geoEndpoint, queryParameters: {'q': 'London'})).thenThrow(
            DioError(
              requestOptions: RequestOptions(path: ''),
              response: Response(requestOptions: RequestOptions(path: ''), statusCode: code),
            ),
          );

          //Assert
          expect(() => source.getCityByName('London'), throwsA(exception));
          verify(mockDio.get(geoEndpoint, queryParameters: {'q': 'London'}));
        });
      });
    });

    group('getWeatherByCoords', () {
      exceptionsTests.forEach((code, exception) {
        test('should throw $exception if api key is wrong', () async {
          //Arrange
          when(
            mockDio.get(
              weatherEndpoint,
              queryParameters: {'lat': testLondonModel.lat, 'lon': testLondonModel.lon, 'units': 'metric'},
            ),
          ).thenThrow(
            DioError(
              requestOptions: RequestOptions(path: ''),
              response: Response(requestOptions: RequestOptions(path: ''), statusCode: code),
            ),
          );

          //Assert
          expect(
            () => source.getWeatherByCoords(lat: testLondonModel.lat, lon: testLondonModel.lon),
            throwsA(exception),
          );
          verify(
            mockDio.get(
              weatherEndpoint,
              queryParameters: {'lat': testLondonModel.lat, 'lon': testLondonModel.lon, 'units': 'metric'},
            ),
          );
        });
      });
    });
  });
}
