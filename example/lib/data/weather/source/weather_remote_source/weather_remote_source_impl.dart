import 'package:app_kit/arch/error/exception.dart';
import 'package:dio/dio.dart';
import 'package:http_status_code/http_status_code.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/const.dart';
import '../../model/weather.dart';
import '../../model/city.dart';
import 'weather_remote_source.dart';

@LazySingleton(as: WeatherRemoteSource)
class WeatherRemoteSourceImpl extends WeatherRemoteSource {
  final Dio dio;

  WeatherRemoteSourceImpl(this.dio);

  @override
  Future<CityModel> getCityByName(String name) async {
    try {
      final response = await dio.get(geoEndpoint, queryParameters: {'q': name});
      final formattedDataList = response.data as List;

      if (formattedDataList.isEmpty) {
        throw NotFoundException();
      }

      return CityModel.fromJson(formattedDataList.first);
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw ConnectionException();
      } else if (e.response?.statusCode == StatusCode.UNAUTHORIZED) {
        throw UnauthorizedException();
      } else if (e.response?.statusCode == StatusCode.BAD_REQUEST) {
        throw NotFoundException();
      }

      throw UnknownException();
    }
  }

  @override
  Future<WeatherModel> getWeatherByCoords({required double lat, required double lon}) async {
    try {
      final response = await dio.get(
        weatherEndpoint,
        queryParameters: {'lat': lat, 'lon': lon, 'units': 'metric'},
      );

      return WeatherModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw ConnectionException();
      } else if (e.response?.statusCode == StatusCode.UNAUTHORIZED) {
        throw UnauthorizedException();
      } else if (e.response?.statusCode == StatusCode.BAD_REQUEST) {
        throw NotFoundException();
      }

      throw UnknownException();
    }
  }
}
