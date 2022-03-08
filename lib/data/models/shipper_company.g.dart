// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipperCompany _$_$_ShipperCompanyFromJson(Map<String, dynamic> json) {
  return _$_ShipperCompany(
    companyName: json['companyName'] as String?,
    companyNameKana: json['companyNameKana'] as String?,
    postalCode: json['postalCode'] as String?,
    prefecture: json['prefecture'] as String?,
    city: json['city'] as String?,
    addressNumber: json['addressNumber'] as String?,
    addressOther: json['addressOther'] as String?,
    isPremium: json['isPremium'] as bool?,
  );
}

Map<String, dynamic> _$_$_ShipperCompanyToJson(_$_ShipperCompany instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companyNameKana': instance.companyNameKana,
      'postalCode': instance.postalCode,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'addressNumber': instance.addressNumber,
      'addressOther': instance.addressOther,
      'isPremium': instance.isPremium,
    };
