import 'package:app_kit/app_bar.dart';
import 'package:app_kit/empty_widget.dart';
import 'package:app_kit/structures/pair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tech_stack/data/weather/model/city.dart';
import 'package:tech_stack/data/weather/model/weather/weather.dart';
import 'package:tech_stack/state.dart';
import 'package:tech_stack/view/common/style/colors.dart';
import 'package:tech_stack/view/common/style/text_styles.dart';
import 'package:tech_stack/view/weather_screen/action.dart';
import 'package:tech_stack/view/weather_screen/state.dart';
import 'package:app_kit/extensions.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        padding: const EdgeInsets.only(
          right: 12,
          top: 12,
          bottom: 12,
        ),
        title: Text(
          "Weather",
          style: large(color: whiteColor),
        ),
        titleStyle: large(color: whiteColor),
        centerTitle: true,
        backgroundColor: accentColor,
        trailing: const Icon(
          Icons.info_outline_rounded,
        ),
      ),
      body: StoreConnector<AppState, WeatherState?>(
        onInit: (store) {
          store.dispatch(WeatherLoadAction());
        },
        converter: (store) {
          return store.state.weatherState;
        },
        builder: (context, WeatherState? state) {
          final Widget child;

          if (state is WeatherLoadingState) {
            child = Center(key: UniqueKey(), child: CircularProgressIndicator());
          } else if (state is WeatherFailedState) {
            child = Center(
              key: UniqueKey(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Can't load a weather\nTry again",
                    style: largeRegular(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  MaterialButton(
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(WeatherLoadAction());
                    },
                    color: accentColor,
                    splashColor: accentColor,
                    child: Text(
                      "Reload",
                      style: regular(color: whiteColor),
                    ),
                  ),
                ],
              ),
            );
          } else if (state is WeatherResultState) {
            child = ListView.separated(
              key: UniqueKey(),
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 32),
              itemCount: state.results.length,
              itemBuilder: (context, index) {
                return _buildWeather(state.results[index]);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 12),
            );
          } else {
            child = emptyWidget;
          }

          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildWeather(Pair<City, Weather> weather) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.03), offset: const Offset(-2.5, 2.5)),
        ],
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    weather.first.name,
                    style: large(),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    weather.second.description.description.capitalize(),
                    style: largeRegular(color: Colors.black54),
                  ),
                ],
              ),
              Text(
                "${weather.second.temp.round()} °C",
                style: custom(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: accentColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Max temp: ",
                          style: medium(color: Colors.black26),
                        ),
                        TextSpan(
                          text: "${weather.second.tempMax.round()} °C",
                          style: regular(),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Min temp: ",
                          style: medium(color: Colors.black26),
                        ),
                        TextSpan(
                          text: "${weather.second.tempMin.round()} °C",
                          style: regular(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Humidity: ",
                      style: medium(color: Colors.black26),
                    ),
                    TextSpan(
                      text: "${weather.second.humidity}%",
                      style: regular(),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
