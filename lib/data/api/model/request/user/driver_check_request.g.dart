// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_check_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverCheckRequest _$_$_DriverCheckRequestFromJson(
    Map<String, dynamic> json) {
  return _$_DriverCheckRequest(
    waitTimeMilliSecond: (json['waitTimeMilliSecond'] as num).toDouble(),
    centerResponsibility: json['centerResponsibility'] as bool,
    ancillaryWorkList: (json['ancillaryWorkList'] as List<dynamic>)
        .map((e) => AncillaryWork.fromJson(e as Map<String, dynamic>))
        .toList(),
    ancillaryWorkId: json['ancillaryWorkId'] as int,
    checkResult: json['checkResult'] as bool,
    other: json['other'] as String,
    evaluation: (json['evaluation'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_DriverCheckRequestToJson(
        _$_DriverCheckRequest instance) =>
    <String, dynamic>{
      'waitTimeMilliSecond': instance.waitTimeMilliSecond,
      'centerResponsibility': instance.centerResponsibility,
      'ancillaryWorkList': instance.ancillaryWorkList,
      'ancillaryWorkId': instance.ancillaryWorkId,
      'checkResult': instance.checkResult,
      'other': instance.other,
      'evaluation': instance.evaluation,
    };
