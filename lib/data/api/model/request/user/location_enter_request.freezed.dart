// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_enter_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationEnterRequest _$LocationEnterRequestFromJson(Map<String, dynamic> json) {
  return _LocationEnterRequest.fromJson(json);
}

/// @nodoc
class _$LocationEnterRequestTearOff {
  const _$LocationEnterRequestTearOff();

  _LocationEnterRequest call(
      {required bool? withinRange, double? lat, double? lon}) {
    return _LocationEnterRequest(
      withinRange: withinRange,
      lat: lat,
      lon: lon,
    );
  }

  LocationEnterRequest fromJson(Map<String, Object> json) {
    return LocationEnterRequest.fromJson(json);
  }
}

/// @nodoc
const $LocationEnterRequest = _$LocationEnterRequestTearOff();

/// @nodoc
mixin _$LocationEnterRequest {
  bool? get withinRange => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationEnterRequestCopyWith<LocationEnterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEnterRequestCopyWith<$Res> {
  factory $LocationEnterRequestCopyWith(LocationEnterRequest value,
          $Res Function(LocationEnterRequest) then) =
      _$LocationEnterRequestCopyWithImpl<$Res>;
  $Res call({bool? withinRange, double? lat, double? lon});
}

/// @nodoc
class _$LocationEnterRequestCopyWithImpl<$Res>
    implements $LocationEnterRequestCopyWith<$Res> {
  _$LocationEnterRequestCopyWithImpl(this._value, this._then);

  final LocationEnterRequest _value;
  // ignore: unused_field
  final $Res Function(LocationEnterRequest) _then;

  @override
  $Res call({
    Object? withinRange = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      withinRange: withinRange == freezed
          ? _value.withinRange
          : withinRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$LocationEnterRequestCopyWith<$Res>
    implements $LocationEnterRequestCopyWith<$Res> {
  factory _$LocationEnterRequestCopyWith(_LocationEnterRequest value,
          $Res Function(_LocationEnterRequest) then) =
      __$LocationEnterRequestCopyWithImpl<$Res>;
  @override
  $Res call({bool? withinRange, double? lat, double? lon});
}

/// @nodoc
class __$LocationEnterRequestCopyWithImpl<$Res>
    extends _$LocationEnterRequestCopyWithImpl<$Res>
    implements _$LocationEnterRequestCopyWith<$Res> {
  __$LocationEnterRequestCopyWithImpl(
      _LocationEnterRequest _value, $Res Function(_LocationEnterRequest) _then)
      : super(_value, (v) => _then(v as _LocationEnterRequest));

  @override
  _LocationEnterRequest get _value => super._value as _LocationEnterRequest;

  @override
  $Res call({
    Object? withinRange = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_LocationEnterRequest(
      withinRange: withinRange == freezed
          ? _value.withinRange
          : withinRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationEnterRequest implements _LocationEnterRequest {
  const _$_LocationEnterRequest(
      {required this.withinRange, this.lat, this.lon});

  factory _$_LocationEnterRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationEnterRequestFromJson(json);

  @override
  final bool? withinRange;
  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'LocationEnterRequest(withinRange: $withinRange, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationEnterRequest &&
            (identical(other.withinRange, withinRange) ||
                const DeepCollectionEquality()
                    .equals(other.withinRange, withinRange)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(withinRange) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon);

  @JsonKey(ignore: true)
  @override
  _$LocationEnterRequestCopyWith<_LocationEnterRequest> get copyWith =>
      __$LocationEnterRequestCopyWithImpl<_LocationEnterRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationEnterRequestToJson(this);
  }
}

abstract class _LocationEnterRequest implements LocationEnterRequest {
  const factory _LocationEnterRequest(
      {required bool? withinRange,
      double? lat,
      double? lon}) = _$_LocationEnterRequest;

  factory _LocationEnterRequest.fromJson(Map<String, dynamic> json) =
      _$_LocationEnterRequest.fromJson;

  @override
  bool? get withinRange => throw _privateConstructorUsedError;
  @override
  double? get lat => throw _privateConstructorUsedError;
  @override
  double? get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationEnterRequestCopyWith<_LocationEnterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
