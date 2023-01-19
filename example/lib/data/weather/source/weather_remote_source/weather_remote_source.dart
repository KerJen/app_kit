import "../../model/city.dart";
import "../../model/weather.dart";

abstract class WeatherRemoteSource {
  Future<CityModel> getCityByName(String name);
  Future<WeatherModel> getWeatherByCoords({required double lat, required double lon});
}
