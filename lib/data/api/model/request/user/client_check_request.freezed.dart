// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'client_check_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientCheckRequest _$ClientCheckRequestFromJson(Map<String, dynamic> json) {
  return _ClientCheckRequest.fromJson(json);
}

/// @nodoc
class _$ClientCheckRequestTearOff {
  const _$ClientCheckRequestTearOff();

  _ClientCheckRequest call(
      {required String checkResults,
      required int deliveryCheckId,
      required bool checkResult,
      required double driverEvaluation,
      required String signImageUrl}) {
    return _ClientCheckRequest(
      checkResults: checkResults,
      deliveryCheckId: deliveryCheckId,
      checkResult: checkResult,
      driverEvaluation: driverEvaluation,
      signImageUrl: signImageUrl,
    );
  }

  ClientCheckRequest fromJson(Map<String, Object> json) {
    return ClientCheckRequest.fromJson(json);
  }
}

/// @nodoc
const $ClientCheckRequest = _$ClientCheckRequestTearOff();

/// @nodoc
mixin _$ClientCheckRequest {
  String get checkResults => throw _privateConstructorUsedError;
  int get deliveryCheckId => throw _privateConstructorUsedError;
  bool get checkResult => throw _privateConstructorUsedError;
  double get driverEvaluation => throw _privateConstructorUsedError;
  String get signImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCheckRequestCopyWith<ClientCheckRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCheckRequestCopyWith<$Res> {
  factory $ClientCheckRequestCopyWith(
          ClientCheckRequest value, $Res Function(ClientCheckRequest) then) =
      _$ClientCheckRequestCopyWithImpl<$Res>;
  $Res call(
      {String checkResults,
      int deliveryCheckId,
      bool checkResult,
      double driverEvaluation,
      String signImageUrl});
}

/// @nodoc
class _$ClientCheckRequestCopyWithImpl<$Res>
    implements $ClientCheckRequestCopyWith<$Res> {
  _$ClientCheckRequestCopyWithImpl(this._value, this._then);

  final ClientCheckRequest _value;
  // ignore: unused_field
  final $Res Function(ClientCheckRequest) _then;

  @override
  $Res call({
    Object? checkResults = freezed,
    Object? deliveryCheckId = freezed,
    Object? checkResult = freezed,
    Object? driverEvaluation = freezed,
    Object? signImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      checkResults: checkResults == freezed
          ? _value.checkResults
          : checkResults // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCheckId: deliveryCheckId == freezed
          ? _value.deliveryCheckId
          : deliveryCheckId // ignore: cast_nullable_to_non_nullable
              as int,
      checkResult: checkResult == freezed
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as bool,
      driverEvaluation: driverEvaluation == freezed
          ? _value.driverEvaluation
          : driverEvaluation // ignore: cast_nullable_to_non_nullable
              as double,
      signImageUrl: signImageUrl == freezed
          ? _value.signImageUrl
          : signImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClientCheckRequestCopyWith<$Res>
    implements $ClientCheckRequestCopyWith<$Res> {
  factory _$ClientCheckRequestCopyWith(
          _ClientCheckRequest value, $Res Function(_ClientCheckRequest) then) =
      __$ClientCheckRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String checkResults,
      int deliveryCheckId,
      bool checkResult,
      double driverEvaluation,
      String signImageUrl});
}

/// @nodoc
class __$ClientCheckRequestCopyWithImpl<$Res>
    extends _$ClientCheckRequestCopyWithImpl<$Res>
    implements _$ClientCheckRequestCopyWith<$Res> {
  __$ClientCheckRequestCopyWithImpl(
      _ClientCheckRequest _value, $Res Function(_ClientCheckRequest) _then)
      : super(_value, (v) => _then(v as _ClientCheckRequest));

  @override
  _ClientCheckRequest get _value => super._value as _ClientCheckRequest;

  @override
  $Res call({
    Object? checkResults = freezed,
    Object? deliveryCheckId = freezed,
    Object? checkResult = freezed,
    Object? driverEvaluation = freezed,
    Object? signImageUrl = freezed,
  }) {
    return _then(_ClientCheckRequest(
      checkResults: checkResults == freezed
          ? _value.checkResults
          : checkResults // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCheckId: deliveryCheckId == freezed
          ? _value.deliveryCheckId
          : deliveryCheckId // ignore: cast_nullable_to_non_nullable
              as int,
      checkResult: checkResult == freezed
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as bool,
      driverEvaluation: driverEvaluation == freezed
          ? _value.driverEvaluation
          : driverEvaluation // ignore: cast_nullable_to_non_nullable
              as double,
      signImageUrl: signImageUrl == freezed
          ? _value.signImageUrl
          : signImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientCheckRequest implements _ClientCheckRequest {
  const _$_ClientCheckRequest(
      {required this.checkResults,
      required this.deliveryCheckId,
      required this.checkResult,
      required this.driverEvaluation,
      required this.signImageUrl});

  factory _$_ClientCheckRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_ClientCheckRequestFromJson(json);

  @override
  final String checkResults;
  @override
  final int deliveryCheckId;
  @override
  final bool checkResult;
  @override
  final double driverEvaluation;
  @override
  final String signImageUrl;

  @override
  String toString() {
    return 'ClientCheckRequest(checkResults: $checkResults, deliveryCheckId: $deliveryCheckId, checkResult: $checkResult, driverEvaluation: $driverEvaluation, signImageUrl: $signImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientCheckRequest &&
            (identical(other.checkResults, checkResults) ||
                const DeepCollectionEquality()
                    .equals(other.checkResults, checkResults)) &&
            (identical(other.deliveryCheckId, deliveryCheckId) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryCheckId, deliveryCheckId)) &&
            (identical(other.checkResult, checkResult) ||
                const DeepCollectionEquality()
                    .equals(other.checkResult, checkResult)) &&
            (identical(other.driverEvaluation, driverEvaluation) ||
                const DeepCollectionEquality()
                    .equals(other.driverEvaluation, driverEvaluation)) &&
            (identical(other.signImageUrl, signImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.signImageUrl, signImageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(checkResults) ^
      const DeepCollectionEquality().hash(deliveryCheckId) ^
      const DeepCollectionEquality().hash(checkResult) ^
      const DeepCollectionEquality().hash(driverEvaluation) ^
      const DeepCollectionEquality().hash(signImageUrl);

  @JsonKey(ignore: true)
  @override
  _$ClientCheckRequestCopyWith<_ClientCheckRequest> get copyWith =>
      __$ClientCheckRequestCopyWithImpl<_ClientCheckRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClientCheckRequestToJson(this);
  }
}

abstract class _ClientCheckRequest implements ClientCheckRequest {
  const factory _ClientCheckRequest(
      {required String checkResults,
      required int deliveryCheckId,
      required bool checkResult,
      required double driverEvaluation,
      required String signImageUrl}) = _$_ClientCheckRequest;

  factory _ClientCheckRequest.fromJson(Map<String, dynamic> json) =
      _$_ClientCheckRequest.fromJson;

  @override
  String get checkResults => throw _privateConstructorUsedError;
  @override
  int get deliveryCheckId => throw _privateConstructorUsedError;
  @override
  bool get checkResult => throw _privateConstructorUsedError;
  @override
  double get driverEvaluation => throw _privateConstructorUsedError;
  @override
  String get signImageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClientCheckRequestCopyWith<_ClientCheckRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
