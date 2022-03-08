// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_check_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientCheckRequest _$_$_ClientCheckRequestFromJson(
    Map<String, dynamic> json) {
  return _$_ClientCheckRequest(
    checkResults: json['checkResults'] as String,
    deliveryCheckId: json['deliveryCheckId'] as int,
    checkResult: json['checkResult'] as bool,
    driverEvaluation: (json['driverEvaluation'] as num).toDouble(),
    signImageUrl: json['signImageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_ClientCheckRequestToJson(
        _$_ClientCheckRequest instance) =>
    <String, dynamic>{
      'checkResults': instance.checkResults,
      'deliveryCheckId': instance.deliveryCheckId,
      'checkResult': instance.checkResult,
      'driverEvaluation': instance.driverEvaluation,
      'signImageUrl': instance.signImageUrl,
    };
