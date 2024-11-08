import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:myweather/BO/CoordinatesBO/CoordinatesBO.dart';
import 'package:myweather/BO/WeatherForecastBO/WeatherForecastBO.dart';
import 'package:myweather/BO/WeatherReportBO/WeatherReportBO.dart';
import 'package:myweather/BO/WindDetailsBO/WindDetailsBO.dart';
@jsonSerializable
class LocationBO {
  num? id;
  String? name;
  CoordinatesBO? coord;
  WeatherReportBO? main;
  WindDetailsBO? wind;
  String? sys;
  num? clouds;
  List<WeatherForecastBO>? weather;

  LocationBO({
    this.id,
    this.name,
    this.coord,
    this.main,
    this.wind,
    this.sys,
    this.clouds,
    this.weather,
  });
}
