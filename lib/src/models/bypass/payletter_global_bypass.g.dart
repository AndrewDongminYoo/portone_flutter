// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payletter_global_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayletterGlobalBypass _$PayletterGlobalBypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PayletterGlobalBypass', json, ($checkedConvert) {
  final val = PayletterGlobalBypass(
    pginfo: $checkedConvert('pginfo', (v) => v as String?),
    servicename: $checkedConvert('servicename', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$PayletterGlobalBypassToJson(
  PayletterGlobalBypass instance,
) => <String, dynamic>{
  'pginfo': ?instance.pginfo,
  'servicename': ?instance.servicename,
};
