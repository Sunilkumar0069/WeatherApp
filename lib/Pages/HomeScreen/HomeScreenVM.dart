import 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart';
import 'package:myweather/Pages/HomeScreen/HomeScreenModel.dart';

class HomeScreenVM extends HomeScreenModel {
  HomeScreenVM() {
    fetchWeatherDetails(searchText: "");
  }

  Future<void> fetchWeatherDetails({required String searchText}) async {
    WeatherAIBO? content =
        await weatherService.getWeatherDetails(searchText: searchText);

    if (content != null) {
      setWeatherDetails(content);
    }
  }
}
