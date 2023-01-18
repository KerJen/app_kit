import 'package:mockito/annotations.dart';
import 'package:tech_stack/data/weather/source/weather_remote_source/weather_remote_source.dart';
import 'package:tech_stack/domain/weather/usecase/get_weathers_usecase.dart';

/// Repository mocks
@GenerateNiceMocks([MockSpec<GetWeathersUseCase>()])
// ignore: unused_import
import 'usecase_mocks.dart';
