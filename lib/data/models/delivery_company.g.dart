// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryCompany _$_$_DeliveryCompanyFromJson(Map<String, dynamic> json) {
  return _$_DeliveryCompany(
    companyName: json['companyName'] as String?,
    companyNameKana: json['companyNameKana'] as String?,
    postalCode: json['postalCode'] as String?,
    prefecture: json['prefecture'] as String?,
    city: json['city'] as String?,
    addressNumber: json['addressNumber'] as String?,
    addressOther: json['addressOther'] as String?,
  );
}

Map<String, dynamic> _$_$_DeliveryCompanyToJson(_$_DeliveryCompany instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companyNameKana': instance.companyNameKana,
      'postalCode': instance.postalCode,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'addressNumber': instance.addressNumber,
      'addressOther': instance.addressOther,
    };
