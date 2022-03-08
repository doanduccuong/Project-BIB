// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DestinationCompany _$_$_DestinationCompanyFromJson(
    Map<String, dynamic> json) {
  return _$_DestinationCompany(
    destinationCompanyId: json['destinationCompanyId'] as int,
    companyName: json['companyName'] as String?,
    companyNameKana: json['companyNameKana'] as String?,
    postalCode: json['postalCode'] as String?,
    prefecture: json['prefecture'] as String?,
    city: json['city'] as String?,
    addressNumber: json['addressNumber'] as String?,
    addressOther: json['addressOther'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_DestinationCompanyToJson(
        _$_DestinationCompany instance) =>
    <String, dynamic>{
      'destinationCompanyId': instance.destinationCompanyId,
      'companyName': instance.companyName,
      'companyNameKana': instance.companyNameKana,
      'postalCode': instance.postalCode,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'addressNumber': instance.addressNumber,
      'addressOther': instance.addressOther,
      'lat': instance.lat,
      'lon': instance.lon,
    };
