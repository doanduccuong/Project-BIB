import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/ancillary_work.dart';

part 'driver_check_request.freezed.dart';
part 'driver_check_request.g.dart';

@freezed
abstract class DriverCheckRequest with _$DriverCheckRequest {
  const factory DriverCheckRequest(
      {required double waitTimeMilliSecond,
      required bool centerResponsibility,
      required List<AncillaryWork> ancillaryWorkList,
      required int ancillaryWorkId,
      required bool checkResult,
      required String other,
      required double evaluation}) = _DriverCheckRequest;

  factory DriverCheckRequest.fromJson(Map<String, dynamic> json) =>
      _$DriverCheckRequestFromJson(json);
}
