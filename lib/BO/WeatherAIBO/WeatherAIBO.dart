import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:json_annotation/json_annotation.dart';

@jsonSerializable
class WeatherAIBO {
  final String? message;
  final String? cod;
  final num? count;
  final List<WeatherList>? list;

  WeatherAIBO({
    this.message,
    this.cod,
    this.count,
    this.list,
  });
}

@jsonSerializable
class WeatherList {
  final num? id;
  final String? name;
  final Coord? coord;
  final Main? main;
  final num? dt;
  final Wind? wind;
  final Sys? sys;
  final Rain? rain;
  final dynamic snow;
  final Clouds? clouds;
  final List<Weather>? weather;

  WeatherList({
    this.id,
    this.name,
    this.coord,
    this.main,
    this.dt,
    this.wind,
    this.sys,
    this.rain,
    this.snow,
    this.clouds,
    this.weather,
  });
}

@jsonSerializable
class Coord {
  final num? lat;
  final num? lon;

  Coord({
    this.lat,
    this.lon,
  });
}

@jsonSerializable
class Main {
  final num? temp;
  @JsonProperty(name: "feels_like")
  final num? feelsLike;
  @JsonProperty(name: "temp_min")
  final num? tempMin;
  @JsonProperty(name: "temp_max")
  final num? tempMax;
  final num? pressure;
  final num? humidity;
  @JsonProperty(name: "sea_level")
  final num? seaLevel;
  @JsonProperty(name: "grnd_level")
  final num? grndLevel;

  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });
}

@jsonSerializable
class Wind {
  final num? speed;
  final num? deg;

  Wind({
    this.speed,
    this.deg,
  });
}

@jsonSerializable
class Sys {
  final String? country;

  Sys({
    this.country,
  });
}

@jsonSerializable
class Rain {
  @JsonProperty(name: '1h')
  final num? oneH;

  Rain({this.oneH});
}

@jsonSerializable
class Clouds {
  final num? all;

  Clouds({
    this.all,
  });
}

@jsonSerializable
class Weather {
  final num? id;
  final String? main;
  final String? description;
  final String? icon;

  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
}
