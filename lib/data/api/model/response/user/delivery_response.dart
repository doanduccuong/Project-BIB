import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/delivery.dart';
part 'delivery_response.freezed.dart';
part 'delivery_response.g.dart';

@freezed
abstract class DeliveryResponse with _$DeliveryResponse {
  const factory DeliveryResponse({
    String? message,
    Delivery? data}
  ) = _DeliveryResponse;

  factory DeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryResponseFromJson(json);

}
