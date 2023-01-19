import "package:mockito/annotations.dart";
import "package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source.dart";

/// Repository mocks
@GenerateNiceMocks([MockSpec<WeatherRemoteSource>()])
// ignore: unused_import
import "source_mocks.mocks.dart";
