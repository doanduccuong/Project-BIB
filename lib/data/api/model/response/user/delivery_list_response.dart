import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/delivery.dart';
part 'delivery_list_response.freezed.dart';
part 'delivery_list_response.g.dart';

@freezed
abstract class DeliveryListResponse with _$DeliveryListResponse {
  const factory DeliveryListResponse({
    String? message,
    List<Delivery>? data}
  ) = _DeliveryListResponse;

  factory DeliveryListResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryListResponseFromJson(json);

}
