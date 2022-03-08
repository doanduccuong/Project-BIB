// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationRequest _$LocationRequestFromJson(Map<String, dynamic> json) {
  return _LocationRequest.fromJson(json);
}

/// @nodoc
class _$LocationRequestTearOff {
  const _$LocationRequestTearOff();

  _LocationRequest call({required double lat, required double lon}) {
    return _LocationRequest(
      lat: lat,
      lon: lon,
    );
  }

  LocationRequest fromJson(Map<String, Object> json) {
    return LocationRequest.fromJson(json);
  }
}

/// @nodoc
const $LocationRequest = _$LocationRequestTearOff();

/// @nodoc
mixin _$LocationRequest {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationRequestCopyWith<LocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationRequestCopyWith<$Res> {
  factory $LocationRequestCopyWith(
          LocationRequest value, $Res Function(LocationRequest) then) =
      _$LocationRequestCopyWithImpl<$Res>;
  $Res call({double lat, double lon});
}

/// @nodoc
class _$LocationRequestCopyWithImpl<$Res>
    implements $LocationRequestCopyWith<$Res> {
  _$LocationRequestCopyWithImpl(this._value, this._then);

  final LocationRequest _value;
  // ignore: unused_field
  final $Res Function(LocationRequest) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationRequestCopyWith<$Res>
    implements $LocationRequestCopyWith<$Res> {
  factory _$LocationRequestCopyWith(
          _LocationRequest value, $Res Function(_LocationRequest) then) =
      __$LocationRequestCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lon});
}

/// @nodoc
class __$LocationRequestCopyWithImpl<$Res>
    extends _$LocationRequestCopyWithImpl<$Res>
    implements _$LocationRequestCopyWith<$Res> {
  __$LocationRequestCopyWithImpl(
      _LocationRequest _value, $Res Function(_LocationRequest) _then)
      : super(_value, (v) => _then(v as _LocationRequest));

  @override
  _LocationRequest get _value => super._value as _LocationRequest;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_LocationRequest(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationRequest implements _LocationRequest {
  const _$_LocationRequest({required this.lat, required this.lon});

  factory _$_LocationRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationRequestFromJson(json);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'LocationRequest(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationRequest &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon);

  @JsonKey(ignore: true)
  @override
  _$LocationRequestCopyWith<_LocationRequest> get copyWith =>
      __$LocationRequestCopyWithImpl<_LocationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationRequestToJson(this);
  }
}

abstract class _LocationRequest implements LocationRequest {
  const factory _LocationRequest({required double lat, required double lon}) =
      _$_LocationRequest;

  factory _LocationRequest.fromJson(Map<String, dynamic> json) =
      _$_LocationRequest.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationRequestCopyWith<_LocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
