// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'CoordinatesBO.dart' as x0 show CoordinatesBO;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
// No output from reflectable, there is no `main`.
final coordinatesBoGeneratedAdapter = JsonMapperAdapter(
  title: 'myweather',
  url: 'package:myweather/BO/CoordinatesBO/CoordinatesBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.CoordinatesBO>>(): (value) => value.cast<x0.CoordinatesBO>(),
    typeOf<Set<x0.CoordinatesBO>>(): (value) => value.cast<x0.CoordinatesBO>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, coordinatesBoGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}