// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryListResponse _$_$_DeliveryListResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryListResponse(
    message: json['message'] as String?,
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Delivery.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DeliveryListResponseToJson(
        _$_DeliveryListResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
