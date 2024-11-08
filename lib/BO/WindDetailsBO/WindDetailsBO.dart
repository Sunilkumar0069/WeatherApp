import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class WindDetailsBO {
  num? speed;
  num? deg;

  WindDetailsBO({this.speed, this.deg});
}

