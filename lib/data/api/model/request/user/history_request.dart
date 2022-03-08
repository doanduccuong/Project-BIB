import 'package:freezed_annotation/freezed_annotation.dart';
part 'history_request.freezed.dart';
part 'history_request.g.dart';

@freezed
abstract class HistoryRequest with _$HistoryRequest {
  const factory HistoryRequest({
    required String sort, //"date-asc,date-desc,Specify eitherdefaultはdate-desc"
    required bool hasProblem}
  ) = _HistoryRequest;

  factory HistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$HistoryRequestFromJson(json);

}