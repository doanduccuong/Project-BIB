import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/ancillary_work.dart';

part 'shipper_mypage_request.freezed.dart';
part 'shipper_mypage_request.g.dart';

@freezed
abstract class ShipperMypageRequest with _$ShipperMypageRequest {
  const factory ShipperMypageRequest(
      {required String lastName,
      required String firstName,
      required String lastNameKana,
      required String firstNameKana,
      required String telNum,
      required String email}) = _ShipperMypageRequest;

  factory ShipperMypageRequest.fromJson(Map<String, dynamic> json) =>
      _$ShipperMypageRequestFromJson(json);
}
