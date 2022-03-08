// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shipper _$_$_ShipperFromJson(Map<String, dynamic> json) {
  return _$_Shipper(
    familyName: json['familyName'] as String?,
    firstName: json['firstName'] as String?,
    familyNameKana: json['familyNameKana'] as String?,
    firstNameKana: json['firstNameKana'] as String?,
    telnum: json['telnum'] as String?,
    email: json['email'] as String?,
    shipperCompany: json['shipperCompany'] == null
        ? null
        : ShipperCompany.fromJson(
            json['shipperCompany'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ShipperToJson(_$_Shipper instance) =>
    <String, dynamic>{
      'familyName': instance.familyName,
      'firstName': instance.firstName,
      'familyNameKana': instance.familyNameKana,
      'firstNameKana': instance.firstNameKana,
      'telnum': instance.telnum,
      'email': instance.email,
      'shipperCompany': instance.shipperCompany,
    };
