// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$weatherDetailsAtom =
      Atom(name: '_HomeScreenModelBase.weatherDetails', context: context);

  @override
  WeatherAIBO get weatherDetails {
    _$weatherDetailsAtom.reportRead();
    return super.weatherDetails;
  }

  @override
  set weatherDetails(WeatherAIBO value) {
    _$weatherDetailsAtom.reportWrite(value, super.weatherDetails, () {
      super.weatherDetails = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setWeatherDetails(WeatherAIBO weatherDetails) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setWeatherDetails');
    try {
      return super.setWeatherDetails(weatherDetails);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
weatherDetails: ${weatherDetails}
    ''';
  }
}
