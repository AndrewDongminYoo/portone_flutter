// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindowTypes _$WindowTypesFromJson(Map<String, dynamic> json) => WindowTypes(
  mobile: $enumDecodeNullable(_$WindowTypeEnumMap, json['mobile']),
  pc: $enumDecodeNullable(_$WindowTypeEnumMap, json['pc']),
);

Map<String, dynamic> _$WindowTypesToJson(WindowTypes instance) =>
    <String, dynamic>{
      'mobile': ?_$WindowTypeEnumMap[instance.mobile],
      'pc': ?_$WindowTypeEnumMap[instance.pc],
    };

const Map<WindowType, String> _$WindowTypeEnumMap = {
  WindowType.iframe: 'IFRAME',
  WindowType.popup: 'POPUP',
  WindowType.redirection: 'REDIRECTION',
  WindowType.ui: 'UI',
};
