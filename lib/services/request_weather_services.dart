import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatehrServices {
  final Dio dio = Dio();

  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '543248a6a1ec4ce8908203608230112';
  Future<WeatehrModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatehrModel weatehrModel = WeatehrModel.fromJson(response.data);

      return weatehrModel;
    } on DioException catch (e) {
      final String? errorMessage = e.response?.data['error']['message'] ??
          'OOps , there Was An Error , try later';
      throw Exception(errorMessage);
    } catch (e) {
      final String errorMessage = e.toString();
      log(errorMessage);
      throw Exception(errorMessage);
    }
  }
}
