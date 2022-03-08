import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/shipper.dart';
part 'shipper_response.freezed.dart';
part 'shipper_response.g.dart';

@freezed
abstract class ShipperResponse with _$ShipperResponse {
  const factory ShipperResponse({
    String? message,
    Shipper? data}
  ) = _ShipperResponse;

  factory ShipperResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipperResponseFromJson(json);

}
