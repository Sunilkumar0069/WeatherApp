// ignore_for_file: annotate_overrides, body_might_complete_normally_nullable, unused_catch_clause

import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:dio/dio.dart';
import 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart';
import 'package:myweather/Services/API%20Services/WeatherService/IWeatherService.dart';

class WeatherService extends IWeatherService {
  Dio dio = Dio(BaseOptions(baseUrl: "https://api.openweathermap.org"));

  Future<WeatherAIBO?> getWeatherDetails({required String searchText}) async {
    try {
      String appId = "5796abbde9106b7da4febfae8c44c232";

      Response response = await dio.get(
          "/data/2.5/find?q=$searchText&appid=$appId&units=metric",
          options: Options(headers: {"key": searchText}));

      WeatherAIBO? deSerializeData =
          JsonMapper.deserialize<WeatherAIBO>(response.data);

      return deSerializeData!;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }
}
