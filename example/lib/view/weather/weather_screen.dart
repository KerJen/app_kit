import 'package:app_kit/app_bar.dart';
import 'package:app_kit/empty_widget.dart';
import 'package:app_kit/structures/pair.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tech_stack/core/ui/style/colors.dart';
import 'package:tech_stack/core/ui/style/text_styles.dart';
import 'package:app_kit/extensions.dart';
import 'package:tech_stack/domain/weather/entity/weather_entity.dart';
import 'package:tech_stack/domain/weather/usecase/get_weathers_usecase.dart';
import 'package:tech_stack/view/weather/bloc/weather_bloc.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(getWeathers: GetWeathersUseCase(GetIt.I.get()))
        ..add(
          const WeatherEvent.load(
            cities: [
              "London",
              "Moscow",
              "Montevideo",
            ],
          ),
        ),
      child: Scaffold(
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
          onTrailingTap: () {
            context.router.pushNamed("/info");
          },
        ),
        body: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, WeatherState state) {
            final Widget child;

            child = state.maybeMap(
              loading: (_) {
                return Center(key: UniqueKey(), child: const CircularProgressIndicator());
              },
              failure: (state) {
                return Center(
                  key: UniqueKey(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${state.message}\nTry again",
                        style: largeRegular(color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      MaterialButton(
                        onPressed: () {
                          BlocProvider.of<WeatherBloc>(context).add(
                            const WeatherEvent.load(
                              cities: [
                                "London",
                                "Moscow",
                              ],
                            ),
                          );
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
              },
              result: (state) {
                return ListView.separated(
                  key: UniqueKey(),
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 32),
                  itemCount: state.weathers.length,
                  itemBuilder: (context, index) {
                    return _buildWeather(state.weathers[index]);
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                );
              },
              orElse: () => emptyWidget,
            );

            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: child,
            );
          },
        ),
      ),
    );
  }

  Widget _buildWeather(WeatherEntity weather) {
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
                    weather.cityName,
                    style: large(),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    weather.description.capitalize(),
                    style: largeRegular(color: Colors.black54),
                  ),
                ],
              ),
              Text(
                "${weather.temp.round()} °C",
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
                          text: "${weather.maxTemp.round()} °C",
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
                          text: "${weather.minTemp.round()} °C",
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
                      text: "${weather.humidity}%",
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
