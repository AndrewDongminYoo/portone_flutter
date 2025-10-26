// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inicis_jp_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InicisJpBypass _$InicisJpBypassFromJson(Map<String, dynamic> json) =>
    InicisJpBypass(
      paymentUI: json['paymentUI'] == null
          ? null
          : InicisJpPaymentUI.fromJson(
              json['paymentUI'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$InicisJpBypassToJson(InicisJpBypass instance) =>
    <String, dynamic>{'paymentUI': ?instance.paymentUI?.toJson()};

InicisJpPaymentUI _$InicisJpPaymentUIFromJson(Map<String, dynamic> json) =>
    InicisJpPaymentUI(
      colorTheme: json['colorTheme'] as String?,
      logoUrl: json['logoUrl'] as String?,
    );

Map<String, dynamic> _$InicisJpPaymentUIToJson(InicisJpPaymentUI instance) =>
    <String, dynamic>{
      'colorTheme': ?instance.colorTheme,
      'logoUrl': ?instance.logoUrl,
    };
