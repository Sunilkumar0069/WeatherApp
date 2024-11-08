import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class CoordinatesBO {
  num? lat;
  num? lon;

  CoordinatesBO({this.lat, this.lon});
}
