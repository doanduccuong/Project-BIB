// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ancillary_work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AncillaryWork _$_$_AncillaryWorkFromJson(Map<String, dynamic> json) {
  return _$_AncillaryWork(
    ancillaryWorkId: json['ancillaryWorkId'] as int,
    ancillaryWorkName: json['ancillaryWorkName'] as String?,
    note: json['note'] as String?,
    workMinute: json['workMinute'] as int?,
  );
}

Map<String, dynamic> _$_$_AncillaryWorkToJson(_$_AncillaryWork instance) =>
    <String, dynamic>{
      'ancillaryWorkId': instance.ancillaryWorkId,
      'ancillaryWorkName': instance.ancillaryWorkName,
      'note': instance.note,
      'workMinute': instance.workMinute,
    };
