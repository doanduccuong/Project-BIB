import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_check_result.freezed.dart';
part 'delivery_check_result.g.dart';

@freezed
abstract class DeliveryCheckResult with _$DeliveryCheckResult {
  const factory DeliveryCheckResult(
      {required int deliveryCheckResultId,
      String? checkDescription,
      bool? checkResult}) = _DeliveryCheckResult;

  factory DeliveryCheckResult.fromJson(Map<String, dynamic> json) =>
      _$DeliveryCheckResultFromJson(json);
}
