import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:myweather/BO/LocationBO/LocationBO.dart';
@jsonSerializable
class WeatherBO {
  String? message;
  String? cod;
  num? count;
  List<LocationBO>? list;

  WeatherBO({
    this.message,
    this.cod,
    this.count,
    this.list,
  });
}
