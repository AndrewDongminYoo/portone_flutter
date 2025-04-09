// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindowTypes _$WindowTypesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'WindowTypes',
      json,
      ($checkedConvert) {
        final val = WindowTypes(
          mobile: $checkedConvert('mobile', (v) => $enumDecodeNullable(_$WindowTypeEnumMap, v)),
          pc: $checkedConvert('pc', (v) => $enumDecodeNullable(_$WindowTypeEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$WindowTypesToJson(WindowTypes instance) => <String, dynamic>{
      if (_$WindowTypeEnumMap[instance.mobile] case final value?) 'mobile': value,
      if (_$WindowTypeEnumMap[instance.pc] case final value?) 'pc': value,
    };

const _$WindowTypeEnumMap = {
  WindowType.iframe: 'IFRAME',
  WindowType.popup: 'POPUP',
  WindowType.redirection: 'REDIRECTION',
  WindowType.ui: 'UI',
};
