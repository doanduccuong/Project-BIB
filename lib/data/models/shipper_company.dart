import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper_company.freezed.dart';
part 'shipper_company.g.dart';

@freezed
abstract class ShipperCompany with _$ShipperCompany {
  const factory ShipperCompany(
      {String? companyName,
      String? companyNameKana,
      String? postalCode,
      String? prefecture,
      String? city,
      String? addressNumber,
      String? addressOther,
      bool? isPremium}) = _ShipperCompany;

  factory ShipperCompany.fromJson(Map<String, dynamic> json) =>
      _$ShipperCompanyFromJson(json);
}
