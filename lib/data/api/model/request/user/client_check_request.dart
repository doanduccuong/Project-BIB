import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_check_request.freezed.dart';
part 'client_check_request.g.dart';

@freezed
abstract class ClientCheckRequest with _$ClientCheckRequest {
  const factory ClientCheckRequest(
      {required String checkResults,
      required int deliveryCheckId,
      required bool checkResult,
      required double driverEvaluation,
      required String signImageUrl}) = _ClientCheckRequest;

  factory ClientCheckRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientCheckRequestFromJson(json);
}
