import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/delivery_company.dart';
part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
abstract class Driver with _$Driver {
  const factory Driver(
      {String? familyName,
      String? firstName,
      String? familyNameKana,
      String? firstNameKana,
      String? telnum,
      String? email,
      DeliveryCompany? deliveryCompany}) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}
