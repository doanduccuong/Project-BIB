// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shipper_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipperResponse _$ShipperResponseFromJson(Map<String, dynamic> json) {
  return _ShipperResponse.fromJson(json);
}

/// @nodoc
class _$ShipperResponseTearOff {
  const _$ShipperResponseTearOff();

  _ShipperResponse call({String? message, Shipper? data}) {
    return _ShipperResponse(
      message: message,
      data: data,
    );
  }

  ShipperResponse fromJson(Map<String, Object> json) {
    return ShipperResponse.fromJson(json);
  }
}

/// @nodoc
const $ShipperResponse = _$ShipperResponseTearOff();

/// @nodoc
mixin _$ShipperResponse {
  String? get message => throw _privateConstructorUsedError;
  Shipper? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperResponseCopyWith<ShipperResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperResponseCopyWith<$Res> {
  factory $ShipperResponseCopyWith(
          ShipperResponse value, $Res Function(ShipperResponse) then) =
      _$ShipperResponseCopyWithImpl<$Res>;
  $Res call({String? message, Shipper? data});

  $ShipperCopyWith<$Res>? get data;
}

/// @nodoc
class _$ShipperResponseCopyWithImpl<$Res>
    implements $ShipperResponseCopyWith<$Res> {
  _$ShipperResponseCopyWithImpl(this._value, this._then);

  final ShipperResponse _value;
  // ignore: unused_field
  final $Res Function(ShipperResponse) _then;

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
              as Shipper?,
    ));
  }

  @override
  $ShipperCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ShipperCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ShipperResponseCopyWith<$Res>
    implements $ShipperResponseCopyWith<$Res> {
  factory _$ShipperResponseCopyWith(
          _ShipperResponse value, $Res Function(_ShipperResponse) then) =
      __$ShipperResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Shipper? data});

  @override
  $ShipperCopyWith<$Res>? get data;
}

/// @nodoc
class __$ShipperResponseCopyWithImpl<$Res>
    extends _$ShipperResponseCopyWithImpl<$Res>
    implements _$ShipperResponseCopyWith<$Res> {
  __$ShipperResponseCopyWithImpl(
      _ShipperResponse _value, $Res Function(_ShipperResponse) _then)
      : super(_value, (v) => _then(v as _ShipperResponse));

  @override
  _ShipperResponse get _value => super._value as _ShipperResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ShipperResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Shipper?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipperResponse implements _ShipperResponse {
  const _$_ShipperResponse({this.message, this.data});

  factory _$_ShipperResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ShipperResponseFromJson(json);

  @override
  final String? message;
  @override
  final Shipper? data;

  @override
  String toString() {
    return 'ShipperResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipperResponse &&
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
  _$ShipperResponseCopyWith<_ShipperResponse> get copyWith =>
      __$ShipperResponseCopyWithImpl<_ShipperResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShipperResponseToJson(this);
  }
}

abstract class _ShipperResponse implements ShipperResponse {
  const factory _ShipperResponse({String? message, Shipper? data}) =
      _$_ShipperResponse;

  factory _ShipperResponse.fromJson(Map<String, dynamic> json) =
      _$_ShipperResponse.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  Shipper? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipperResponseCopyWith<_ShipperResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
