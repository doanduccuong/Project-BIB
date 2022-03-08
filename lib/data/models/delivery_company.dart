import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_company.freezed.dart';
part 'delivery_company.g.dart';

@freezed
abstract class DeliveryCompany with _$DeliveryCompany {
  const factory DeliveryCompany(
      {String? companyName,
      String? companyNameKana,
      String? postalCode,
      String? prefecture,
      String? city,
      String? addressNumber,
      String? addressOther}) = _DeliveryCompany;

  factory DeliveryCompany.fromJson(Map<String, dynamic> json) =>
      _$DeliveryCompanyFromJson(json);
}
