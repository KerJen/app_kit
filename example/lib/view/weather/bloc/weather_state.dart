part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _WeatherLoadingState;
  const factory WeatherState.failure({required String message}) = _WeatherFailureState;
  const factory WeatherState.result({required List<WeatherEntity> weathers}) = _WeatherResultState;
}
