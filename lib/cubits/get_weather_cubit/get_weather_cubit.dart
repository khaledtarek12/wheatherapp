import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/services/request_weather_services.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  WeatehrModel? weatehrModel;
  void getWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      weatehrModel =
          await WeatehrServices().getCurrentWeather(cityName: cityName);
      log(weatehrModel!.cityName);
      emit(WeatherSuccessful(weatehrModel: weatehrModel!));
    } catch (e) {
      emit(WeatherFailur(e.toString()));
    }
  }
}
