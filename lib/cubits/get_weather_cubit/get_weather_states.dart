import 'package:weather_app/models/weather_models.dart';

class WeatherState {}

class WeatherInitial extends WeatherState {}
class WeatherLoading extends WeatherState {}

class WeatherSuccessful extends WeatherState {
  final WeatehrModel weatehrModel;

  WeatherSuccessful({required this.weatehrModel});
}

class WeatherFailur extends WeatherState {
  final String errorMessag;

  WeatherFailur(this.errorMessag);
}
