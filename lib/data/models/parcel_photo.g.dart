// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParcelPhoto _$_$_ParcelPhotoFromJson(Map<String, dynamic> json) {
  return _$_ParcelPhoto(
    parcelPhotoId: json['parcelPhotoId'] as int,
    imageUrl: json['imageUrl'] as String?,
    hasProblem: json['hasProblem'] as bool?,
  );
}

Map<String, dynamic> _$_$_ParcelPhotoToJson(_$_ParcelPhoto instance) =>
    <String, dynamic>{
      'parcelPhotoId': instance.parcelPhotoId,
      'imageUrl': instance.imageUrl,
      'hasProblem': instance.hasProblem,
    };
