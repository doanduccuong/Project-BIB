import 'package:freezed_annotation/freezed_annotation.dart';
part 'parcel_image_request.freezed.dart';
part 'parcel_image_request.g.dart';

@freezed
abstract class ParcelImageRequest with _$ParcelImageRequest {
  const factory ParcelImageRequest({
    required String imageUrl,
    required bool hasProblem}
  ) = _ParcelImageRequest;

  factory ParcelImageRequest.fromJson(Map<String, dynamic> json) =>
      _$ParcelImageRequestFromJson(json);

}
