// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Delivery _$_$_DeliveryFromJson(Map<String, dynamic> json) {
  return _$_Delivery(
    deliveryId: json['deliveryId'] as int,
    estimatedEntryTime: (json['estimatedEntryTime'] as num?)?.toDouble(),
    entryLat: (json['entryLat'] as num?)?.toDouble(),
    entryLon: (json['entryLon'] as num?)?.toDouble(),
    entryTime: (json['entryTime'] as num?)?.toDouble(),
    entryTimeManual: (json['entryTimeManual'] as num?)?.toDouble(),
    workStartTime: (json['workStartTime'] as num?)?.toDouble(),
    workEndTime: (json['workEndTime'] as num?)?.toDouble(),
    workStartTimeManual: (json['workStartTimeManual'] as num?)?.toDouble(),
    workEndTimeManual: (json['workEndTimeManual'] as num?)?.toDouble(),
    deliveryCompleteTime: (json['deliveryCompleteTime'] as num?)?.toDouble(),
    ledgerImageUrl: json['ledgerImageUrl'] as String?,
    slipImageUrl: json['slipImageUrl'] as String?,
    signImageUrl: json['signImageUrl'] as String?,
    driverEvaluation: (json['driverEvaluation'] as num?)?.toDouble(),
    destinationEvaluation: (json['destinationEvaluation'] as num?)?.toDouble(),
    confirmFlag: json['confirmFlag'] as bool?,
    deliveryStatus: json['deliveryStatus'] as String?,
    deliveryType: json['deliveryType'] as String?,
    desitinationCompany: json['desitinationCompany'] == null
        ? null
        : DestinationCompany.fromJson(
            json['desitinationCompany'] as Map<String, dynamic>),
    ancillaryWorkList: (json['ancillaryWorkList'] as List<dynamic>?)
        ?.map((e) => AncillaryWork.fromJson(e as Map<String, dynamic>))
        .toList(),
    deliveryCheckResultList: (json['deliveryCheckResultList'] as List<dynamic>?)
        ?.map((e) => DeliveryCheckResult.fromJson(e as Map<String, dynamic>))
        .toList(),
    parcelPhotoList: (json['parcelPhotoList'] as List<dynamic>?)
        ?.map((e) => ParcelPhoto.fromJson(e as Map<String, dynamic>))
        .toList(),
    logisticCenter: json['logisticCenter'] == null
        ? null
        : LogisticCenter.fromJson(
            json['logisticCenter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'deliveryId': instance.deliveryId,
      'estimatedEntryTime': instance.estimatedEntryTime,
      'entryLat': instance.entryLat,
      'entryLon': instance.entryLon,
      'entryTime': instance.entryTime,
      'entryTimeManual': instance.entryTimeManual,
      'workStartTime': instance.workStartTime,
      'workEndTime': instance.workEndTime,
      'workStartTimeManual': instance.workStartTimeManual,
      'workEndTimeManual': instance.workEndTimeManual,
      'deliveryCompleteTime': instance.deliveryCompleteTime,
      'ledgerImageUrl': instance.ledgerImageUrl,
      'slipImageUrl': instance.slipImageUrl,
      'signImageUrl': instance.signImageUrl,
      'driverEvaluation': instance.driverEvaluation,
      'destinationEvaluation': instance.destinationEvaluation,
      'confirmFlag': instance.confirmFlag,
      'deliveryStatus': instance.deliveryStatus,
      'deliveryType': instance.deliveryType,
      'desitinationCompany': instance.desitinationCompany,
      'ancillaryWorkList': instance.ancillaryWorkList,
      'deliveryCheckResultList': instance.deliveryCheckResultList,
      'parcelPhotoList': instance.parcelPhotoList,
      'logisticCenter': instance.logisticCenter,
    };
