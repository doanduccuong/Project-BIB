// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryResponse _$_$_DeliveryResponseFromJson(Map<String, dynamic> json) {
  return _$_DeliveryResponse(
    message: json['message'] as String?,
    data: json['data'] == null
        ? null
        : Delivery.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DeliveryResponseToJson(
        _$_DeliveryResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
