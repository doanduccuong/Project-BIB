import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_enter_request.freezed.dart';
part 'location_enter_request.g.dart';

@freezed
abstract class LocationEnterRequest with _$LocationEnterRequest {
  const factory LocationEnterRequest({
    required bool? withinRange,
    double? lat,
    double? lon}
  ) = _LocationEnterRequest;

  factory LocationEnterRequest.fromJson(Map<String, dynamic> json) =>
      _$LocationEnterRequestFromJson(json);

}
