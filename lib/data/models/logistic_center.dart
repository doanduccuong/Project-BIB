import 'package:freezed_annotation/freezed_annotation.dart';

part 'logistic_center.freezed.dart';
part 'logistic_center.g.dart';

@freezed
abstract class LogisticCenter with _$LogisticCenter {
  const factory LogisticCenter(
      {String? companyName,
      String? companyNameKana,
      String? postalCode,
      String? prefecture,
      String? city,
      String? addressNumber,
      String? addressOther}) = _LogisticCenter;

  factory LogisticCenter.fromJson(Map<String, dynamic> json) =>
      _$LogisticCenterFromJson(json);
}
