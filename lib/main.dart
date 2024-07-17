import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/widgets/material_color.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => WeatherCubit(),
    child: const WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: false,
            primarySwatch: getThemeColor(
              BlocProvider.of<WeatherCubit>(context)
                  .weatehrModel
                  ?.weatherCondition,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        );
      },
    );
  }
}
