import 'package:redux/redux.dart';
import 'package:tech_stack/state.dart';
import 'package:tech_stack/view/weather_screen/reducer.dart';

AppState appReducer(AppState state, action) => AppState(
      weatherState: weatherReducer(state.weatherState, action),
    );
