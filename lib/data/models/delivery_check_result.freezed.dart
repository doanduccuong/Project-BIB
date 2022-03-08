// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery_check_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryCheckResult _$DeliveryCheckResultFromJson(Map<String, dynamic> json) {
  return _DeliveryCheckResult.fromJson(json);
}

/// @nodoc
class _$DeliveryCheckResultTearOff {
  const _$DeliveryCheckResultTearOff();

  _DeliveryCheckResult call(
      {required int deliveryCheckResultId,
      String? checkDescription,
      bool? checkResult}) {
    return _DeliveryCheckResult(
      deliveryCheckResultId: deliveryCheckResultId,
      checkDescription: checkDescription,
      checkResult: checkResult,
    );
  }

  DeliveryCheckResult fromJson(Map<String, Object> json) {
    return DeliveryCheckResult.fromJson(json);
  }
}

/// @nodoc
const $DeliveryCheckResult = _$DeliveryCheckResultTearOff();

/// @nodoc
mixin _$DeliveryCheckResult {
  int get deliveryCheckResultId => throw _privateConstructorUsedError;
  String? get checkDescription => throw _privateConstructorUsedError;
  bool? get checkResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCheckResultCopyWith<DeliveryCheckResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCheckResultCopyWith<$Res> {
  factory $DeliveryCheckResultCopyWith(
          DeliveryCheckResult value, $Res Function(DeliveryCheckResult) then) =
      _$DeliveryCheckResultCopyWithImpl<$Res>;
  $Res call(
      {int deliveryCheckResultId, String? checkDescription, bool? checkResult});
}

/// @nodoc
class _$DeliveryCheckResultCopyWithImpl<$Res>
    implements $DeliveryCheckResultCopyWith<$Res> {
  _$DeliveryCheckResultCopyWithImpl(this._value, this._then);

  final DeliveryCheckResult _value;
  // ignore: unused_field
  final $Res Function(DeliveryCheckResult) _then;

  @override
  $Res call({
    Object? deliveryCheckResultId = freezed,
    Object? checkDescription = freezed,
    Object? checkResult = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryCheckResultId: deliveryCheckResultId == freezed
          ? _value.deliveryCheckResultId
          : deliveryCheckResultId // ignore: cast_nullable_to_non_nullable
              as int,
      checkDescription: checkDescription == freezed
          ? _value.checkDescription
          : checkDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      checkResult: checkResult == freezed
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryCheckResultCopyWith<$Res>
    implements $DeliveryCheckResultCopyWith<$Res> {
  factory _$DeliveryCheckResultCopyWith(_DeliveryCheckResult value,
          $Res Function(_DeliveryCheckResult) then) =
      __$DeliveryCheckResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int deliveryCheckResultId, String? checkDescription, bool? checkResult});
}

/// @nodoc
class __$DeliveryCheckResultCopyWithImpl<$Res>
    extends _$DeliveryCheckResultCopyWithImpl<$Res>
    implements _$DeliveryCheckResultCopyWith<$Res> {
  __$DeliveryCheckResultCopyWithImpl(
      _DeliveryCheckResult _value, $Res Function(_DeliveryCheckResult) _then)
      : super(_value, (v) => _then(v as _DeliveryCheckResult));

  @override
  _DeliveryCheckResult get _value => super._value as _DeliveryCheckResult;

  @override
  $Res call({
    Object? deliveryCheckResultId = freezed,
    Object? checkDescription = freezed,
    Object? checkResult = freezed,
  }) {
    return _then(_DeliveryCheckResult(
      deliveryCheckResultId: deliveryCheckResultId == freezed
          ? _value.deliveryCheckResultId
          : deliveryCheckResultId // ignore: cast_nullable_to_non_nullable
              as int,
      checkDescription: checkDescription == freezed
          ? _value.checkDescription
          : checkDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      checkResult: checkResult == freezed
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryCheckResult implements _DeliveryCheckResult {
  const _$_DeliveryCheckResult(
      {required this.deliveryCheckResultId,
      this.checkDescription,
      this.checkResult});

  factory _$_DeliveryCheckResult.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryCheckResultFromJson(json);

  @override
  final int deliveryCheckResultId;
  @override
  final String? checkDescription;
  @override
  final bool? checkResult;

  @override
  String toString() {
    return 'DeliveryCheckResult(deliveryCheckResultId: $deliveryCheckResultId, checkDescription: $checkDescription, checkResult: $checkResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryCheckResult &&
            (identical(other.deliveryCheckResultId, deliveryCheckResultId) ||
                const DeepCollectionEquality().equals(
                    other.deliveryCheckResultId, deliveryCheckResultId)) &&
            (identical(other.checkDescription, checkDescription) ||
                const DeepCollectionEquality()
                    .equals(other.checkDescription, checkDescription)) &&
            (identical(other.checkResult, checkResult) ||
                const DeepCollectionEquality()
                    .equals(other.checkResult, checkResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deliveryCheckResultId) ^
      const DeepCollectionEquality().hash(checkDescription) ^
      const DeepCollectionEquality().hash(checkResult);

  @JsonKey(ignore: true)
  @override
  _$DeliveryCheckResultCopyWith<_DeliveryCheckResult> get copyWith =>
      __$DeliveryCheckResultCopyWithImpl<_DeliveryCheckResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryCheckResultToJson(this);
  }
}

abstract class _DeliveryCheckResult implements DeliveryCheckResult {
  const factory _DeliveryCheckResult(
      {required int deliveryCheckResultId,
      String? checkDescription,
      bool? checkResult}) = _$_DeliveryCheckResult;

  factory _DeliveryCheckResult.fromJson(Map<String, dynamic> json) =
      _$_DeliveryCheckResult.fromJson;

  @override
  int get deliveryCheckResultId => throw _privateConstructorUsedError;
  @override
  String? get checkDescription => throw _privateConstructorUsedError;
  @override
  bool? get checkResult => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryCheckResultCopyWith<_DeliveryCheckResult> get copyWith =>
      throw _privateConstructorUsedError;
}
