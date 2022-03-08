import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/models/destination_company.dart';
import 'package:base_flutter/data/models/ancillary_work.dart';
import 'package:base_flutter/data/models/delivery_check_result.dart';
import 'package:base_flutter/data/models/parcel_photo.dart';
import 'package:base_flutter/data/models/logistic_center.dart';
part 'delivery.freezed.dart';
part 'delivery.g.dart';

@freezed
abstract class Delivery with _$Delivery {
  const factory Delivery({
    required int deliveryId,
    double? estimatedEntryTime,
    double? entryLat,
    double? entryLon,
    double? entryTime,
    double? entryTimeManual,
    double? workStartTime,
    double? workEndTime,
    double? workStartTimeManual,
    double? workEndTimeManual,
    double? deliveryCompleteTime,
    String? ledgerImageUrl,
    String? slipImageUrl,
    String? signImageUrl,
    double? driverEvaluation,
    double? destinationEvaluation,
    bool? confirmFlag,
    String? deliveryStatus,
    String? deliveryType,
    DestinationCompany? desitinationCompany,
    List<AncillaryWork>? ancillaryWorkList,
    List<DeliveryCheckResult>? deliveryCheckResultList,
    List<ParcelPhoto>? parcelPhotoList,
    LogisticCenter? logisticCenter
    }
  ) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}