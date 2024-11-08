// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'WeatherAIBO.dart' as x0 show WeatherAIBO, WeatherList, Coord, Main, Wind, Sys, Rain, Clouds, Weather;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
// No output from reflectable, there is no `main`.
final weatherAiboGeneratedAdapter = JsonMapperAdapter(
  title: 'myweather',
  url: 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.WeatherAIBO>>(): (value) => value.cast<x0.WeatherAIBO>(),
    typeOf<Set<x0.WeatherAIBO>>(): (value) => value.cast<x0.WeatherAIBO>(),
    typeOf<List<x0.WeatherList>>(): (value) => value.cast<x0.WeatherList>(),
    typeOf<Set<x0.WeatherList>>(): (value) => value.cast<x0.WeatherList>(),
    typeOf<List<x0.Coord>>(): (value) => value.cast<x0.Coord>(),
    typeOf<Set<x0.Coord>>(): (value) => value.cast<x0.Coord>(),
    typeOf<List<x0.Main>>(): (value) => value.cast<x0.Main>(),
    typeOf<Set<x0.Main>>(): (value) => value.cast<x0.Main>(),
    typeOf<List<x0.Wind>>(): (value) => value.cast<x0.Wind>(),
    typeOf<Set<x0.Wind>>(): (value) => value.cast<x0.Wind>(),
    typeOf<List<x0.Sys>>(): (value) => value.cast<x0.Sys>(),
    typeOf<Set<x0.Sys>>(): (value) => value.cast<x0.Sys>(),
    typeOf<List<x0.Rain>>(): (value) => value.cast<x0.Rain>(),
    typeOf<Set<x0.Rain>>(): (value) => value.cast<x0.Rain>(),
    typeOf<List<x0.Clouds>>(): (value) => value.cast<x0.Clouds>(),
    typeOf<Set<x0.Clouds>>(): (value) => value.cast<x0.Clouds>(),
    typeOf<List<x0.Weather>>(): (value) => value.cast<x0.Weather>(),
    typeOf<Set<x0.Weather>>(): (value) => value.cast<x0.Weather>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, weatherAiboGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}