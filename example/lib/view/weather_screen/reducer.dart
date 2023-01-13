import 'package:redux/redux.dart';
import 'package:tech_stack/view/weather_screen/action.dart';
import 'package:tech_stack/view/weather_screen/state.dart';

final weatherReducer = combineReducers<WeatherState>([
  TypedReducer<WeatherState, WeatherLoadAction>(_onLoading),
  TypedReducer<WeatherState, WeatherFailedAction>(_onFailed),
  TypedReducer<WeatherState, WeatherResultAction>(_onResult),
]);

WeatherState _onLoading(WeatherState state, WeatherLoadAction action) => WeatherLoadingState();

WeatherState _onFailed(WeatherState state, WeatherFailedAction action) => WeatherFailedState();

WeatherState _onResult(WeatherState state, WeatherResultAction action) => WeatherResultState(results: action.results);
