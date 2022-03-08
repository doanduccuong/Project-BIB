// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_check_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryCheckResult _$_$_DeliveryCheckResultFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryCheckResult(
    deliveryCheckResultId: json['deliveryCheckResultId'] as int,
    checkDescription: json['checkDescription'] as String?,
    checkResult: json['checkResult'] as bool?,
  );
}

Map<String, dynamic> _$_$_DeliveryCheckResultToJson(
        _$_DeliveryCheckResult instance) =>
    <String, dynamic>{
      'deliveryCheckResultId': instance.deliveryCheckResultId,
      'checkDescription': instance.checkDescription,
      'checkResult': instance.checkResult,
    };
