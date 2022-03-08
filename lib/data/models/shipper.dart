import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/shipper_company.dart';
part 'shipper.freezed.dart';
part 'shipper.g.dart';

@freezed
abstract class Shipper with _$Shipper {
  const factory Shipper(
      {String? familyName,
      String? firstName,
      String? familyNameKana,
      String? firstNameKana,
      String? telnum,
      String? email,
      ShipperCompany? shipperCompany}) = _Shipper;

  factory Shipper.fromJson(Map<String, dynamic> json) => _$ShipperFromJson(json);
}
