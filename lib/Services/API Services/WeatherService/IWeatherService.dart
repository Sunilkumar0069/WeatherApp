import 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart';

abstract class IWeatherService {
  Future<WeatherAIBO?> getWeatherDetails({required String searchText});
}
