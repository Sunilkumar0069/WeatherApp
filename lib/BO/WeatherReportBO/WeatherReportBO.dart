import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class WeatherReportBO {
  num? temp;
  @JsonProperty(name: "feels_like")
  num? feelsLike;
  @JsonProperty(name: "temp_min")
  num? tempMin;
  @JsonProperty(name: "temp_max")
  num? tempMax;
  num? pressure;
  num? humidity;
  @JsonProperty(name: "sea_level")
  num? seaLevel;
  @JsonProperty(name: "grnd_level")
  num? grndLevel;

  WeatherReportBO({
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
