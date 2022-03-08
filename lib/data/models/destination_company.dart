import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_company.freezed.dart';
part 'destination_company.g.dart';


@freezed
abstract class DestinationCompany with _$DestinationCompany {
  const factory DestinationCompany({
    required int destinationCompanyId,
    String? companyName,
    String? companyNameKana,
    String? postalCode,
    String? prefecture,
    String? city,
    String? addressNumber,
    String? addressOther,
    double? lat,
    double? lon
    }
  ) = _DestinationCompany;

  factory DestinationCompany.fromJson(Map<String, dynamic> json) =>
      _$DestinationCompanyFromJson(json);
}
