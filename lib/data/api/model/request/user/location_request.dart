import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_request.freezed.dart';
part 'location_request.g.dart';

@freezed
abstract class LocationRequest with _$LocationRequest {
  const factory LocationRequest({
    required double lat,
    required double lon}
  ) = _LocationRequest;

  factory LocationRequest.fromJson(Map<String, dynamic> json) =>
      _$LocationRequestFromJson(json);

}
