// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hyphen_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HyphenBypass _$HyphenBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'HyphenBypass',
      json,
      ($checkedConvert) {
        final val = HyphenBypass(
          designCd: $checkedConvert('designCd', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$HyphenBypassToJson(HyphenBypass instance) => <String, dynamic>{
      if (instance.designCd case final value?) 'designCd': value,
    };
