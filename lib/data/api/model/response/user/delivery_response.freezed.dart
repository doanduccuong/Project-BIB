// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryResponse _$DeliveryResponseFromJson(Map<String, dynamic> json) {
  return _DeliveryResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryResponseTearOff {
  const _$DeliveryResponseTearOff();

  _DeliveryResponse call({String? message, Delivery? data}) {
    return _DeliveryResponse(
      message: message,
      data: data,
    );
  }

  DeliveryResponse fromJson(Map<String, Object> json) {
    return DeliveryResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryResponse = _$DeliveryResponseTearOff();

/// @nodoc
mixin _$DeliveryResponse {
  String? get message => throw _privateConstructorUsedError;
  Delivery? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryResponseCopyWith<DeliveryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryResponseCopyWith<$Res> {
  factory $DeliveryResponseCopyWith(
          DeliveryResponse value, $Res Function(DeliveryResponse) then) =
      _$DeliveryResponseCopyWithImpl<$Res>;
  $Res call({String? message, Delivery? data});

  $DeliveryCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeliveryResponseCopyWithImpl<$Res>
    implements $DeliveryResponseCopyWith<$Res> {
  _$DeliveryResponseCopyWithImpl(this._value, this._then);

  final DeliveryResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Delivery?,
    ));
  }

  @override
  $DeliveryCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DeliveryCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryResponseCopyWith<$Res>
    implements $DeliveryResponseCopyWith<$Res> {
  factory _$DeliveryResponseCopyWith(
          _DeliveryResponse value, $Res Function(_DeliveryResponse) then) =
      __$DeliveryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Delivery? data});

  @override
  $DeliveryCopyWith<$Res>? get data;
}

/// @nodoc
class __$DeliveryResponseCopyWithImpl<$Res>
    extends _$DeliveryResponseCopyWithImpl<$Res>
    implements _$DeliveryResponseCopyWith<$Res> {
  __$DeliveryResponseCopyWithImpl(
      _DeliveryResponse _value, $Res Function(_DeliveryResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryResponse));

  @override
  _DeliveryResponse get _value => super._value as _DeliveryResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DeliveryResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Delivery?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryResponse implements _DeliveryResponse {
  const _$_DeliveryResponse({this.message, this.data});

  factory _$_DeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryResponseFromJson(json);

  @override
  final String? message;
  @override
  final Delivery? data;

  @override
  String toString() {
    return 'DeliveryResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$DeliveryResponseCopyWith<_DeliveryResponse> get copyWith =>
      __$DeliveryResponseCopyWithImpl<_DeliveryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryResponseToJson(this);
  }
}

abstract class _DeliveryResponse implements DeliveryResponse {
  const factory _DeliveryResponse({String? message, Delivery? data}) =
      _$_DeliveryResponse;

  factory _DeliveryResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryResponse.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  Delivery? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryResponseCopyWith<_DeliveryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
