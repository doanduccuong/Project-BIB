import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/driver.dart';
part 'driver_response.freezed.dart';
part 'driver_response.g.dart';

@freezed
abstract class DriverResponse with _$DriverResponse {
  const factory DriverResponse({
    String? message,
    Driver? data}
  ) = _DriverResponse;

  factory DriverResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverResponseFromJson(json);

}
