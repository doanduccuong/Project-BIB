import 'package:freezed_annotation/freezed_annotation.dart';

part 'parcel_photo.freezed.dart';
part 'parcel_photo.g.dart';

@freezed
abstract class ParcelPhoto with _$ParcelPhoto {
  const factory ParcelPhoto(
      {required int parcelPhotoId,
      String? imageUrl,
      bool? hasProblem}) = _ParcelPhoto;

  factory ParcelPhoto.fromJson(Map<String, dynamic> json) =>
      _$ParcelPhotoFromJson(json);
}
