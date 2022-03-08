// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
class _$DeliveryTearOff {
  const _$DeliveryTearOff();

  _Delivery call(
      {required int deliveryId,
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
      LogisticCenter? logisticCenter}) {
    return _Delivery(
      deliveryId: deliveryId,
      estimatedEntryTime: estimatedEntryTime,
      entryLat: entryLat,
      entryLon: entryLon,
      entryTime: entryTime,
      entryTimeManual: entryTimeManual,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
      workStartTimeManual: workStartTimeManual,
      workEndTimeManual: workEndTimeManual,
      deliveryCompleteTime: deliveryCompleteTime,
      ledgerImageUrl: ledgerImageUrl,
      slipImageUrl: slipImageUrl,
      signImageUrl: signImageUrl,
      driverEvaluation: driverEvaluation,
      destinationEvaluation: destinationEvaluation,
      confirmFlag: confirmFlag,
      deliveryStatus: deliveryStatus,
      deliveryType: deliveryType,
      desitinationCompany: desitinationCompany,
      ancillaryWorkList: ancillaryWorkList,
      deliveryCheckResultList: deliveryCheckResultList,
      parcelPhotoList: parcelPhotoList,
      logisticCenter: logisticCenter,
    );
  }

  Delivery fromJson(Map<String, Object> json) {
    return Delivery.fromJson(json);
  }
}

/// @nodoc
const $Delivery = _$DeliveryTearOff();

/// @nodoc
mixin _$Delivery {
  int get deliveryId => throw _privateConstructorUsedError;
  double? get estimatedEntryTime => throw _privateConstructorUsedError;
  double? get entryLat => throw _privateConstructorUsedError;
  double? get entryLon => throw _privateConstructorUsedError;
  double? get entryTime => throw _privateConstructorUsedError;
  double? get entryTimeManual => throw _privateConstructorUsedError;
  double? get workStartTime => throw _privateConstructorUsedError;
  double? get workEndTime => throw _privateConstructorUsedError;
  double? get workStartTimeManual => throw _privateConstructorUsedError;
  double? get workEndTimeManual => throw _privateConstructorUsedError;
  double? get deliveryCompleteTime => throw _privateConstructorUsedError;
  String? get ledgerImageUrl => throw _privateConstructorUsedError;
  String? get slipImageUrl => throw _privateConstructorUsedError;
  String? get signImageUrl => throw _privateConstructorUsedError;
  double? get driverEvaluation => throw _privateConstructorUsedError;
  double? get destinationEvaluation => throw _privateConstructorUsedError;
  bool? get confirmFlag => throw _privateConstructorUsedError;
  String? get deliveryStatus => throw _privateConstructorUsedError;
  String? get deliveryType => throw _privateConstructorUsedError;
  DestinationCompany? get desitinationCompany =>
      throw _privateConstructorUsedError;
  List<AncillaryWork>? get ancillaryWorkList =>
      throw _privateConstructorUsedError;
  List<DeliveryCheckResult>? get deliveryCheckResultList =>
      throw _privateConstructorUsedError;
  List<ParcelPhoto>? get parcelPhotoList => throw _privateConstructorUsedError;
  LogisticCenter? get logisticCenter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res>;
  $Res call(
      {int deliveryId,
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
      LogisticCenter? logisticCenter});

  $DestinationCompanyCopyWith<$Res>? get desitinationCompany;
  $LogisticCenterCopyWith<$Res>? get logisticCenter;
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res> implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  final Delivery _value;
  // ignore: unused_field
  final $Res Function(Delivery) _then;

  @override
  $Res call({
    Object? deliveryId = freezed,
    Object? estimatedEntryTime = freezed,
    Object? entryLat = freezed,
    Object? entryLon = freezed,
    Object? entryTime = freezed,
    Object? entryTimeManual = freezed,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
    Object? workStartTimeManual = freezed,
    Object? workEndTimeManual = freezed,
    Object? deliveryCompleteTime = freezed,
    Object? ledgerImageUrl = freezed,
    Object? slipImageUrl = freezed,
    Object? signImageUrl = freezed,
    Object? driverEvaluation = freezed,
    Object? destinationEvaluation = freezed,
    Object? confirmFlag = freezed,
    Object? deliveryStatus = freezed,
    Object? deliveryType = freezed,
    Object? desitinationCompany = freezed,
    Object? ancillaryWorkList = freezed,
    Object? deliveryCheckResultList = freezed,
    Object? parcelPhotoList = freezed,
    Object? logisticCenter = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int,
      estimatedEntryTime: estimatedEntryTime == freezed
          ? _value.estimatedEntryTime
          : estimatedEntryTime // ignore: cast_nullable_to_non_nullable
              as double?,
      entryLat: entryLat == freezed
          ? _value.entryLat
          : entryLat // ignore: cast_nullable_to_non_nullable
              as double?,
      entryLon: entryLon == freezed
          ? _value.entryLon
          : entryLon // ignore: cast_nullable_to_non_nullable
              as double?,
      entryTime: entryTime == freezed
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as double?,
      entryTimeManual: entryTimeManual == freezed
          ? _value.entryTimeManual
          : entryTimeManual // ignore: cast_nullable_to_non_nullable
              as double?,
      workStartTime: workStartTime == freezed
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as double?,
      workEndTime: workEndTime == freezed
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as double?,
      workStartTimeManual: workStartTimeManual == freezed
          ? _value.workStartTimeManual
          : workStartTimeManual // ignore: cast_nullable_to_non_nullable
              as double?,
      workEndTimeManual: workEndTimeManual == freezed
          ? _value.workEndTimeManual
          : workEndTimeManual // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCompleteTime: deliveryCompleteTime == freezed
          ? _value.deliveryCompleteTime
          : deliveryCompleteTime // ignore: cast_nullable_to_non_nullable
              as double?,
      ledgerImageUrl: ledgerImageUrl == freezed
          ? _value.ledgerImageUrl
          : ledgerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      slipImageUrl: slipImageUrl == freezed
          ? _value.slipImageUrl
          : slipImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      signImageUrl: signImageUrl == freezed
          ? _value.signImageUrl
          : signImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      driverEvaluation: driverEvaluation == freezed
          ? _value.driverEvaluation
          : driverEvaluation // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationEvaluation: destinationEvaluation == freezed
          ? _value.destinationEvaluation
          : destinationEvaluation // ignore: cast_nullable_to_non_nullable
              as double?,
      confirmFlag: confirmFlag == freezed
          ? _value.confirmFlag
          : confirmFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryStatus: deliveryStatus == freezed
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      desitinationCompany: desitinationCompany == freezed
          ? _value.desitinationCompany
          : desitinationCompany // ignore: cast_nullable_to_non_nullable
              as DestinationCompany?,
      ancillaryWorkList: ancillaryWorkList == freezed
          ? _value.ancillaryWorkList
          : ancillaryWorkList // ignore: cast_nullable_to_non_nullable
              as List<AncillaryWork>?,
      deliveryCheckResultList: deliveryCheckResultList == freezed
          ? _value.deliveryCheckResultList
          : deliveryCheckResultList // ignore: cast_nullable_to_non_nullable
              as List<DeliveryCheckResult>?,
      parcelPhotoList: parcelPhotoList == freezed
          ? _value.parcelPhotoList
          : parcelPhotoList // ignore: cast_nullable_to_non_nullable
              as List<ParcelPhoto>?,
      logisticCenter: logisticCenter == freezed
          ? _value.logisticCenter
          : logisticCenter // ignore: cast_nullable_to_non_nullable
              as LogisticCenter?,
    ));
  }

  @override
  $DestinationCompanyCopyWith<$Res>? get desitinationCompany {
    if (_value.desitinationCompany == null) {
      return null;
    }

    return $DestinationCompanyCopyWith<$Res>(_value.desitinationCompany!,
        (value) {
      return _then(_value.copyWith(desitinationCompany: value));
    });
  }

  @override
  $LogisticCenterCopyWith<$Res>? get logisticCenter {
    if (_value.logisticCenter == null) {
      return null;
    }

    return $LogisticCenterCopyWith<$Res>(_value.logisticCenter!, (value) {
      return _then(_value.copyWith(logisticCenter: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$DeliveryCopyWith(_Delivery value, $Res Function(_Delivery) then) =
      __$DeliveryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int deliveryId,
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
      LogisticCenter? logisticCenter});

  @override
  $DestinationCompanyCopyWith<$Res>? get desitinationCompany;
  @override
  $LogisticCenterCopyWith<$Res>? get logisticCenter;
}

/// @nodoc
class __$DeliveryCopyWithImpl<$Res> extends _$DeliveryCopyWithImpl<$Res>
    implements _$DeliveryCopyWith<$Res> {
  __$DeliveryCopyWithImpl(_Delivery _value, $Res Function(_Delivery) _then)
      : super(_value, (v) => _then(v as _Delivery));

  @override
  _Delivery get _value => super._value as _Delivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
    Object? estimatedEntryTime = freezed,
    Object? entryLat = freezed,
    Object? entryLon = freezed,
    Object? entryTime = freezed,
    Object? entryTimeManual = freezed,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
    Object? workStartTimeManual = freezed,
    Object? workEndTimeManual = freezed,
    Object? deliveryCompleteTime = freezed,
    Object? ledgerImageUrl = freezed,
    Object? slipImageUrl = freezed,
    Object? signImageUrl = freezed,
    Object? driverEvaluation = freezed,
    Object? destinationEvaluation = freezed,
    Object? confirmFlag = freezed,
    Object? deliveryStatus = freezed,
    Object? deliveryType = freezed,
    Object? desitinationCompany = freezed,
    Object? ancillaryWorkList = freezed,
    Object? deliveryCheckResultList = freezed,
    Object? parcelPhotoList = freezed,
    Object? logisticCenter = freezed,
  }) {
    return _then(_Delivery(
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int,
      estimatedEntryTime: estimatedEntryTime == freezed
          ? _value.estimatedEntryTime
          : estimatedEntryTime // ignore: cast_nullable_to_non_nullable
              as double?,
      entryLat: entryLat == freezed
          ? _value.entryLat
          : entryLat // ignore: cast_nullable_to_non_nullable
              as double?,
      entryLon: entryLon == freezed
          ? _value.entryLon
          : entryLon // ignore: cast_nullable_to_non_nullable
              as double?,
      entryTime: entryTime == freezed
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as double?,
      entryTimeManual: entryTimeManual == freezed
          ? _value.entryTimeManual
          : entryTimeManual // ignore: cast_nullable_to_non_nullable
              as double?,
      workStartTime: workStartTime == freezed
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as double?,
      workEndTime: workEndTime == freezed
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as double?,
      workStartTimeManual: workStartTimeManual == freezed
          ? _value.workStartTimeManual
          : workStartTimeManual // ignore: cast_nullable_to_non_nullable
              as double?,
      workEndTimeManual: workEndTimeManual == freezed
          ? _value.workEndTimeManual
          : workEndTimeManual // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCompleteTime: deliveryCompleteTime == freezed
          ? _value.deliveryCompleteTime
          : deliveryCompleteTime // ignore: cast_nullable_to_non_nullable
              as double?,
      ledgerImageUrl: ledgerImageUrl == freezed
          ? _value.ledgerImageUrl
          : ledgerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      slipImageUrl: slipImageUrl == freezed
          ? _value.slipImageUrl
          : slipImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      signImageUrl: signImageUrl == freezed
          ? _value.signImageUrl
          : signImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      driverEvaluation: driverEvaluation == freezed
          ? _value.driverEvaluation
          : driverEvaluation // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationEvaluation: destinationEvaluation == freezed
          ? _value.destinationEvaluation
          : destinationEvaluation // ignore: cast_nullable_to_non_nullable
              as double?,
      confirmFlag: confirmFlag == freezed
          ? _value.confirmFlag
          : confirmFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryStatus: deliveryStatus == freezed
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      desitinationCompany: desitinationCompany == freezed
          ? _value.desitinationCompany
          : desitinationCompany // ignore: cast_nullable_to_non_nullable
              as DestinationCompany?,
      ancillaryWorkList: ancillaryWorkList == freezed
          ? _value.ancillaryWorkList
          : ancillaryWorkList // ignore: cast_nullable_to_non_nullable
              as List<AncillaryWork>?,
      deliveryCheckResultList: deliveryCheckResultList == freezed
          ? _value.deliveryCheckResultList
          : deliveryCheckResultList // ignore: cast_nullable_to_non_nullable
              as List<DeliveryCheckResult>?,
      parcelPhotoList: parcelPhotoList == freezed
          ? _value.parcelPhotoList
          : parcelPhotoList // ignore: cast_nullable_to_non_nullable
              as List<ParcelPhoto>?,
      logisticCenter: logisticCenter == freezed
          ? _value.logisticCenter
          : logisticCenter // ignore: cast_nullable_to_non_nullable
              as LogisticCenter?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Delivery implements _Delivery {
  const _$_Delivery(
      {required this.deliveryId,
      this.estimatedEntryTime,
      this.entryLat,
      this.entryLon,
      this.entryTime,
      this.entryTimeManual,
      this.workStartTime,
      this.workEndTime,
      this.workStartTimeManual,
      this.workEndTimeManual,
      this.deliveryCompleteTime,
      this.ledgerImageUrl,
      this.slipImageUrl,
      this.signImageUrl,
      this.driverEvaluation,
      this.destinationEvaluation,
      this.confirmFlag,
      this.deliveryStatus,
      this.deliveryType,
      this.desitinationCompany,
      this.ancillaryWorkList,
      this.deliveryCheckResultList,
      this.parcelPhotoList,
      this.logisticCenter});

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryFromJson(json);

  @override
  final int deliveryId;
  @override
  final double? estimatedEntryTime;
  @override
  final double? entryLat;
  @override
  final double? entryLon;
  @override
  final double? entryTime;
  @override
  final double? entryTimeManual;
  @override
  final double? workStartTime;
  @override
  final double? workEndTime;
  @override
  final double? workStartTimeManual;
  @override
  final double? workEndTimeManual;
  @override
  final double? deliveryCompleteTime;
  @override
  final String? ledgerImageUrl;
  @override
  final String? slipImageUrl;
  @override
  final String? signImageUrl;
  @override
  final double? driverEvaluation;
  @override
  final double? destinationEvaluation;
  @override
  final bool? confirmFlag;
  @override
  final String? deliveryStatus;
  @override
  final String? deliveryType;
  @override
  final DestinationCompany? desitinationCompany;
  @override
  final List<AncillaryWork>? ancillaryWorkList;
  @override
  final List<DeliveryCheckResult>? deliveryCheckResultList;
  @override
  final List<ParcelPhoto>? parcelPhotoList;
  @override
  final LogisticCenter? logisticCenter;

  @override
  String toString() {
    return 'Delivery(deliveryId: $deliveryId, estimatedEntryTime: $estimatedEntryTime, entryLat: $entryLat, entryLon: $entryLon, entryTime: $entryTime, entryTimeManual: $entryTimeManual, workStartTime: $workStartTime, workEndTime: $workEndTime, workStartTimeManual: $workStartTimeManual, workEndTimeManual: $workEndTimeManual, deliveryCompleteTime: $deliveryCompleteTime, ledgerImageUrl: $ledgerImageUrl, slipImageUrl: $slipImageUrl, signImageUrl: $signImageUrl, driverEvaluation: $driverEvaluation, destinationEvaluation: $destinationEvaluation, confirmFlag: $confirmFlag, deliveryStatus: $deliveryStatus, deliveryType: $deliveryType, desitinationCompany: $desitinationCompany, ancillaryWorkList: $ancillaryWorkList, deliveryCheckResultList: $deliveryCheckResultList, parcelPhotoList: $parcelPhotoList, logisticCenter: $logisticCenter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delivery &&
            (identical(other.deliveryId, deliveryId) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryId, deliveryId)) &&
            (identical(other.estimatedEntryTime, estimatedEntryTime) ||
                const DeepCollectionEquality()
                    .equals(other.estimatedEntryTime, estimatedEntryTime)) &&
            (identical(other.entryLat, entryLat) ||
                const DeepCollectionEquality()
                    .equals(other.entryLat, entryLat)) &&
            (identical(other.entryLon, entryLon) ||
                const DeepCollectionEquality()
                    .equals(other.entryLon, entryLon)) &&
            (identical(other.entryTime, entryTime) ||
                const DeepCollectionEquality()
                    .equals(other.entryTime, entryTime)) &&
            (identical(other.entryTimeManual, entryTimeManual) ||
                const DeepCollectionEquality()
                    .equals(other.entryTimeManual, entryTimeManual)) &&
            (identical(other.workStartTime, workStartTime) ||
                const DeepCollectionEquality()
                    .equals(other.workStartTime, workStartTime)) &&
            (identical(other.workEndTime, workEndTime) ||
                const DeepCollectionEquality()
                    .equals(other.workEndTime, workEndTime)) &&
            (identical(other.workStartTimeManual, workStartTimeManual) ||
                const DeepCollectionEquality()
                    .equals(other.workStartTimeManual, workStartTimeManual)) &&
            (identical(other.workEndTimeManual, workEndTimeManual) ||
                const DeepCollectionEquality()
                    .equals(other.workEndTimeManual, workEndTimeManual)) &&
            (identical(other.deliveryCompleteTime, deliveryCompleteTime) ||
                const DeepCollectionEquality().equals(
                    other.deliveryCompleteTime, deliveryCompleteTime)) &&
            (identical(other.ledgerImageUrl, ledgerImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.ledgerImageUrl, ledgerImageUrl)) &&
            (identical(other.slipImageUrl, slipImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.slipImageUrl, slipImageUrl)) &&
            (identical(other.signImageUrl, signImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.signImageUrl, signImageUrl)) &&
            (identical(other.driverEvaluation, driverEvaluation) ||
                const DeepCollectionEquality()
                    .equals(other.driverEvaluation, driverEvaluation)) &&
            (identical(other.destinationEvaluation, destinationEvaluation) ||
                const DeepCollectionEquality().equals(
                    other.destinationEvaluation, destinationEvaluation)) &&
            (identical(other.confirmFlag, confirmFlag) ||
                const DeepCollectionEquality()
                    .equals(other.confirmFlag, confirmFlag)) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryStatus, deliveryStatus)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.desitinationCompany, desitinationCompany) ||
                const DeepCollectionEquality()
                    .equals(other.desitinationCompany, desitinationCompany)) &&
            (identical(other.ancillaryWorkList, ancillaryWorkList) ||
                const DeepCollectionEquality()
                    .equals(other.ancillaryWorkList, ancillaryWorkList)) &&
            (identical(other.deliveryCheckResultList, deliveryCheckResultList) ||
                const DeepCollectionEquality().equals(other.deliveryCheckResultList, deliveryCheckResultList)) &&
            (identical(other.parcelPhotoList, parcelPhotoList) || const DeepCollectionEquality().equals(other.parcelPhotoList, parcelPhotoList)) &&
            (identical(other.logisticCenter, logisticCenter) || const DeepCollectionEquality().equals(other.logisticCenter, logisticCenter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deliveryId) ^
      const DeepCollectionEquality().hash(estimatedEntryTime) ^
      const DeepCollectionEquality().hash(entryLat) ^
      const DeepCollectionEquality().hash(entryLon) ^
      const DeepCollectionEquality().hash(entryTime) ^
      const DeepCollectionEquality().hash(entryTimeManual) ^
      const DeepCollectionEquality().hash(workStartTime) ^
      const DeepCollectionEquality().hash(workEndTime) ^
      const DeepCollectionEquality().hash(workStartTimeManual) ^
      const DeepCollectionEquality().hash(workEndTimeManual) ^
      const DeepCollectionEquality().hash(deliveryCompleteTime) ^
      const DeepCollectionEquality().hash(ledgerImageUrl) ^
      const DeepCollectionEquality().hash(slipImageUrl) ^
      const DeepCollectionEquality().hash(signImageUrl) ^
      const DeepCollectionEquality().hash(driverEvaluation) ^
      const DeepCollectionEquality().hash(destinationEvaluation) ^
      const DeepCollectionEquality().hash(confirmFlag) ^
      const DeepCollectionEquality().hash(deliveryStatus) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(desitinationCompany) ^
      const DeepCollectionEquality().hash(ancillaryWorkList) ^
      const DeepCollectionEquality().hash(deliveryCheckResultList) ^
      const DeepCollectionEquality().hash(parcelPhotoList) ^
      const DeepCollectionEquality().hash(logisticCenter);

  @JsonKey(ignore: true)
  @override
  _$DeliveryCopyWith<_Delivery> get copyWith =>
      __$DeliveryCopyWithImpl<_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryToJson(this);
  }
}

abstract class _Delivery implements Delivery {
  const factory _Delivery(
      {required int deliveryId,
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
      LogisticCenter? logisticCenter}) = _$_Delivery;

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  int get deliveryId => throw _privateConstructorUsedError;
  @override
  double? get estimatedEntryTime => throw _privateConstructorUsedError;
  @override
  double? get entryLat => throw _privateConstructorUsedError;
  @override
  double? get entryLon => throw _privateConstructorUsedError;
  @override
  double? get entryTime => throw _privateConstructorUsedError;
  @override
  double? get entryTimeManual => throw _privateConstructorUsedError;
  @override
  double? get workStartTime => throw _privateConstructorUsedError;
  @override
  double? get workEndTime => throw _privateConstructorUsedError;
  @override
  double? get workStartTimeManual => throw _privateConstructorUsedError;
  @override
  double? get workEndTimeManual => throw _privateConstructorUsedError;
  @override
  double? get deliveryCompleteTime => throw _privateConstructorUsedError;
  @override
  String? get ledgerImageUrl => throw _privateConstructorUsedError;
  @override
  String? get slipImageUrl => throw _privateConstructorUsedError;
  @override
  String? get signImageUrl => throw _privateConstructorUsedError;
  @override
  double? get driverEvaluation => throw _privateConstructorUsedError;
  @override
  double? get destinationEvaluation => throw _privateConstructorUsedError;
  @override
  bool? get confirmFlag => throw _privateConstructorUsedError;
  @override
  String? get deliveryStatus => throw _privateConstructorUsedError;
  @override
  String? get deliveryType => throw _privateConstructorUsedError;
  @override
  DestinationCompany? get desitinationCompany =>
      throw _privateConstructorUsedError;
  @override
  List<AncillaryWork>? get ancillaryWorkList =>
      throw _privateConstructorUsedError;
  @override
  List<DeliveryCheckResult>? get deliveryCheckResultList =>
      throw _privateConstructorUsedError;
  @override
  List<ParcelPhoto>? get parcelPhotoList => throw _privateConstructorUsedError;
  @override
  LogisticCenter? get logisticCenter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryCopyWith<_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}
