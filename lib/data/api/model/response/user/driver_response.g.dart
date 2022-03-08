// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverResponse _$_$_DriverResponseFromJson(Map<String, dynamic> json) {
  return _$_DriverResponse(
    message: json['message'] as String?,
    data: json['data'] == null
        ? null
        : Driver.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DriverResponseToJson(_$_DriverResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
