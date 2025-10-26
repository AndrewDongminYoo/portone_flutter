// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Popup _$PopupFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Popup', json, ($checkedConvert) {
      final val = Popup(center: $checkedConvert('center', (v) => v as bool?));
      return val;
    });

Map<String, dynamic> _$PopupToJson(Popup instance) => <String, dynamic>{
  'center': ?instance.center,
};
