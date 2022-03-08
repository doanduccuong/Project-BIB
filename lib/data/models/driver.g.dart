// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Driver _$_$_DriverFromJson(Map<String, dynamic> json) {
  return _$_Driver(
    familyName: json['familyName'] as String?,
    firstName: json['firstName'] as String?,
    familyNameKana: json['familyNameKana'] as String?,
    firstNameKana: json['firstNameKana'] as String?,
    telnum: json['telnum'] as String?,
    email: json['email'] as String?,
    deliveryCompany: json['deliveryCompany'] == null
        ? null
        : DeliveryCompany.fromJson(
            json['deliveryCompany'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'familyName': instance.familyName,
      'firstName': instance.firstName,
      'familyNameKana': instance.familyNameKana,
      'firstNameKana': instance.firstNameKana,
      'telnum': instance.telnum,
      'email': instance.email,
      'deliveryCompany': instance.deliveryCompany,
    };
