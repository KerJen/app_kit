import "package:app_kit/arch/error/failure.dart";
import "package:bloc/bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "../../../domain/weather/entity/weather_entity.dart";
import "../../../domain/weather/usecase/get_weathers_usecase.dart";

part "weather_event.dart";
part "weather_state.dart";
part "weather_bloc.freezed.dart";

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeathersUseCase getWeathers;

  WeatherBloc({
    required this.getWeathers,
  }) : super(const WeatherState.loading()) {
    on<WeatherEvent>((event, emit) async {
      await event.map(
        load: (event) async => await _mapLoadEvent(event, emit),
      );
    });
  }

  Future<void> _mapLoadEvent(_WeatherLoadEvent event, Emitter<WeatherState> emit) async {
    emit(const WeatherState.loading());

    final result = await getWeathers(event.cities);

    emit(
      result.fold(
        (failure) {
          if (failure is WrongCoordsFailure) {
            return const WeatherState.failure(message: "wrong_coords_error");
          } else if (failure is CityNotFoundFailure) {
            return const WeatherState.failure(message: "city_not_found_error");
          }

          if (failure is ConnectionFailure) {
            return const WeatherState.failure(message: "no_internet_error");
          } else if (failure is UnauthorizedFailure) {
            return const WeatherState.failure(message: "unauthorized_error");
          } else if (failure is UnknownFailure) {
            return const WeatherState.failure(message: "unknown_error");
          }

          throw UnsupportedError("Unsupported failure: $failure");
        },
        (weathers) => WeatherState.result(weathers: weathers),
      ),
    );
  }
}
