// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'WeatherBO.dart' as x0 show WeatherBO;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
import 'package:myweather/BO/CoordinatesBO/CoordinatesBO.dart' as x2 show CoordinatesBO;
import 'package:myweather/BO/LocationBO/LocationBO.dart' as x1 show LocationBO;
import 'package:myweather/BO/WeatherForecastBO/WeatherForecastBO.dart' as x3 show WeatherForecastBO;
import 'package:myweather/BO/WeatherReportBO/WeatherReportBO.dart' as x4 show WeatherReportBO;
import 'package:myweather/BO/WindDetailsBO/WindDetailsBO.dart' as x5 show WindDetailsBO;
// No output from reflectable, there is no `main`.
final weatherBoGeneratedAdapter = JsonMapperAdapter(
  title: 'myweather',
  url: 'package:myweather/BO/WeatherBO/WeatherBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.WeatherBO>>(): (value) => value.cast<x0.WeatherBO>(),
    typeOf<Set<x0.WeatherBO>>(): (value) => value.cast<x0.WeatherBO>(),
    typeOf<List<x1.LocationBO>>(): (value) => value.cast<x1.LocationBO>(),
    typeOf<Set<x1.LocationBO>>(): (value) => value.cast<x1.LocationBO>(),
    typeOf<List<x2.CoordinatesBO>>(): (value) => value.cast<x2.CoordinatesBO>(),
    typeOf<Set<x2.CoordinatesBO>>(): (value) => value.cast<x2.CoordinatesBO>(),
    typeOf<List<x3.WeatherForecastBO>>(): (value) => value.cast<x3.WeatherForecastBO>(),
    typeOf<Set<x3.WeatherForecastBO>>(): (value) => value.cast<x3.WeatherForecastBO>(),
    typeOf<List<x4.WeatherReportBO>>(): (value) => value.cast<x4.WeatherReportBO>(),
    typeOf<Set<x4.WeatherReportBO>>(): (value) => value.cast<x4.WeatherReportBO>(),
    typeOf<List<x5.WindDetailsBO>>(): (value) => value.cast<x5.WindDetailsBO>(),
    typeOf<Set<x5.WindDetailsBO>>(): (value) => value.cast<x5.WindDetailsBO>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, weatherBoGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}