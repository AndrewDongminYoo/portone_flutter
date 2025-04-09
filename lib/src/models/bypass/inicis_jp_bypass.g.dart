// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inicis_jp_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InicisJpBypass _$InicisJpBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'InicisJpBypass',
      json,
      ($checkedConvert) {
        final val = InicisJpBypass(
          paymentUI: $checkedConvert(
            'paymentUI',
            (v) => v == null ? null : InicisJpPaymentUI.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
    );

Map<String, dynamic> _$InicisJpBypassToJson(InicisJpBypass instance) => <String, dynamic>{
      if (instance.paymentUI?.toJson() case final value?) 'paymentUI': value,
    };

InicisJpPaymentUI _$InicisJpPaymentUIFromJson(Map<String, dynamic> json) => $checkedCreate(
      'InicisJpPaymentUI',
      json,
      ($checkedConvert) {
        final val = InicisJpPaymentUI(
          colorTheme: $checkedConvert('colorTheme', (v) => v as String?),
          logoUrl: $checkedConvert('logoUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$InicisJpPaymentUIToJson(InicisJpPaymentUI instance) => <String, dynamic>{
      if (instance.colorTheme case final value?) 'colorTheme': value,
      if (instance.logoUrl case final value?) 'logoUrl': value,
    };
