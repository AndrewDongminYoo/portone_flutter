// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpn_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KpnBypass _$KpnBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'KpnBypass',
      json,
      ($checkedConvert) {
        final val = KpnBypass(
          cardSelect: $checkedConvert(
            'cardSelect',
            (v) => (v as List<dynamic>?)?.map((e) => $enumDecode(_$KpnCardSelectEnumMap, e)).toList(),
          ),
        );
        return val;
      },
    );

Map<String, dynamic> _$KpnBypassToJson(KpnBypass instance) => <String, dynamic>{
      if (instance.cardSelect?.map((e) => _$KpnCardSelectEnumMap[e]!).toList() case final value?) 'cardSelect': value,
    };

const Map<KpnCardSelect, String> _$KpnCardSelectEnumMap = {
  KpnCardSelect.global: 'GLOBAL',
  KpnCardSelect.elevenPay: '11PAY',
  KpnCardSelect.legacyAuth: 'LEGACY_AUTH',
  KpnCardSelect.keyIn: 'KEY_IN',
};
