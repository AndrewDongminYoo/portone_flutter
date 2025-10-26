// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindowTypes _$WindowTypesFromJson(Map<String, dynamic> json) =>
    $checkedCreate('WindowTypes', json, ($checkedConvert) {
      final val = WindowTypes(
        mobile: $checkedConvert(
          'mobile',
          (v) => $enumDecodeNullable(_$WindowTypeEnumMap, v),
        ),
        pc: $checkedConvert(
          'pc',
          (v) => $enumDecodeNullable(_$WindowTypeEnumMap, v),
        ),
      );
      return val;
    });

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
