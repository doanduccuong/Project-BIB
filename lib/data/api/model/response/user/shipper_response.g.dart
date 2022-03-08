// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipperResponse _$_$_ShipperResponseFromJson(Map<String, dynamic> json) {
  return _$_ShipperResponse(
    message: json['message'] as String?,
    data: json['data'] == null
        ? null
        : Shipper.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ShipperResponseToJson(_$_ShipperResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
