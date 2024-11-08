import 'package:flutter/material.dart';
import 'package:myweather/App.dart';
import 'package:myweather/Services/API%20Services/WeatherService/IWeatherService.dart';
import 'package:myweather/Services/API%20Services/WeatherService/WeatherService.dart';
import 'main.reflectable.dart';
import 'package:get_it/get_it.dart';

import 'BO/WeatherAIBO/WeatherAIBO.mapper.g.dart' as WeatherAIBO;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton<IWeatherService>(WeatherService());
  initializeReflectable();
  // CoordinatesBO.initializeJsonMapper();
  // LocationBO.initializeJsonMapper();
  // WeatherBO.initializeJsonMapper();
  // WeatherForecastBO.initializeJsonMapper();
  // WeatherReportBO.initializeJsonMapper();
  // WindDetailsBO.initializeJsonMapper();
  WeatherAIBO.initializeJsonMapper();
  runApp(const MyApp());
}
