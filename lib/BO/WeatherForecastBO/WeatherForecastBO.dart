import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class WeatherForecastBO {
  num? id;
  String? main;
  String? description;
  String? icon;

  WeatherForecastBO({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
}
