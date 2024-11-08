import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart';
import 'package:myweather/Services/API%20Services/WeatherService/IWeatherService.dart';
part 'HomeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel;

abstract class _HomeScreenModelBase with Store {
  IWeatherService weatherService = GetIt.I.get<IWeatherService>();

  @observable
  WeatherAIBO weatherDetails = WeatherAIBO();
  @action
  void setWeatherDetails(WeatherAIBO weatherDetails) {
    this.weatherDetails = weatherDetails;
  }
}
