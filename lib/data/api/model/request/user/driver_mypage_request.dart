import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/ancillary_work.dart';

part 'driver_mypage_request.freezed.dart';
part 'driver_mypage_request.g.dart';

@freezed
abstract class DriverMypageRequest with _$DriverMypageRequest {
  const factory DriverMypageRequest(
      {required String lastName,
      required String firstName,
      required String lastNameKana,
      required String firstNameKana,
      required String telNum,
      required String email}) = _DriverMypageRequest;

  factory DriverMypageRequest.fromJson(Map<String, dynamic> json) =>
      _$DriverMypageRequestFromJson(json);
}
