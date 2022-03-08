// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'driver_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverResponse _$DriverResponseFromJson(Map<String, dynamic> json) {
  return _DriverResponse.fromJson(json);
}

/// @nodoc
class _$DriverResponseTearOff {
  const _$DriverResponseTearOff();

  _DriverResponse call({String? message, Driver? data}) {
    return _DriverResponse(
      message: message,
      data: data,
    );
  }

  DriverResponse fromJson(Map<String, Object> json) {
    return DriverResponse.fromJson(json);
  }
}

/// @nodoc
const $DriverResponse = _$DriverResponseTearOff();

/// @nodoc
mixin _$DriverResponse {
  String? get message => throw _privateConstructorUsedError;
  Driver? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverResponseCopyWith<DriverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverResponseCopyWith<$Res> {
  factory $DriverResponseCopyWith(
          DriverResponse value, $Res Function(DriverResponse) then) =
      _$DriverResponseCopyWithImpl<$Res>;
  $Res call({String? message, Driver? data});

  $DriverCopyWith<$Res>? get data;
}

/// @nodoc
class _$DriverResponseCopyWithImpl<$Res>
    implements $DriverResponseCopyWith<$Res> {
  _$DriverResponseCopyWithImpl(this._value, this._then);

  final DriverResponse _value;
  // ignore: unused_field
  final $Res Function(DriverResponse) _then;

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
              as Driver?,
    ));
  }

  @override
  $DriverCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DriverResponseCopyWith<$Res>
    implements $DriverResponseCopyWith<$Res> {
  factory _$DriverResponseCopyWith(
          _DriverResponse value, $Res Function(_DriverResponse) then) =
      __$DriverResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, Driver? data});

  @override
  $DriverCopyWith<$Res>? get data;
}

/// @nodoc
class __$DriverResponseCopyWithImpl<$Res>
    extends _$DriverResponseCopyWithImpl<$Res>
    implements _$DriverResponseCopyWith<$Res> {
  __$DriverResponseCopyWithImpl(
      _DriverResponse _value, $Res Function(_DriverResponse) _then)
      : super(_value, (v) => _then(v as _DriverResponse));

  @override
  _DriverResponse get _value => super._value as _DriverResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DriverResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverResponse implements _DriverResponse {
  const _$_DriverResponse({this.message, this.data});

  factory _$_DriverResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DriverResponseFromJson(json);

  @override
  final String? message;
  @override
  final Driver? data;

  @override
  String toString() {
    return 'DriverResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriverResponse &&
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
  _$DriverResponseCopyWith<_DriverResponse> get copyWith =>
      __$DriverResponseCopyWithImpl<_DriverResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DriverResponseToJson(this);
  }
}

abstract class _DriverResponse implements DriverResponse {
  const factory _DriverResponse({String? message, Driver? data}) =
      _$_DriverResponse;

  factory _DriverResponse.fromJson(Map<String, dynamic> json) =
      _$_DriverResponse.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  Driver? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverResponseCopyWith<_DriverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
