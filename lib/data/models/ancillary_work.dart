import 'package:freezed_annotation/freezed_annotation.dart';

part 'ancillary_work.freezed.dart';
part 'ancillary_work.g.dart';

@freezed
abstract class AncillaryWork with _$AncillaryWork {
  const factory AncillaryWork(
      {required int ancillaryWorkId,
      String? ancillaryWorkName,
      String? note,
      int? workMinute}) = _AncillaryWork;

  factory AncillaryWork.fromJson(Map<String, dynamic> json) =>
      _$AncillaryWorkFromJson(json);
}
