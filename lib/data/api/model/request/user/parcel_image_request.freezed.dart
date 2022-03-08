// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'parcel_image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParcelImageRequest _$ParcelImageRequestFromJson(Map<String, dynamic> json) {
  return _ParcelImageRequest.fromJson(json);
}

/// @nodoc
class _$ParcelImageRequestTearOff {
  const _$ParcelImageRequestTearOff();

  _ParcelImageRequest call(
      {required String imageUrl, required bool hasProblem}) {
    return _ParcelImageRequest(
      imageUrl: imageUrl,
      hasProblem: hasProblem,
    );
  }

  ParcelImageRequest fromJson(Map<String, Object> json) {
    return ParcelImageRequest.fromJson(json);
  }
}

/// @nodoc
const $ParcelImageRequest = _$ParcelImageRequestTearOff();

/// @nodoc
mixin _$ParcelImageRequest {
  String get imageUrl => throw _privateConstructorUsedError;
  bool get hasProblem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelImageRequestCopyWith<ParcelImageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelImageRequestCopyWith<$Res> {
  factory $ParcelImageRequestCopyWith(
          ParcelImageRequest value, $Res Function(ParcelImageRequest) then) =
      _$ParcelImageRequestCopyWithImpl<$Res>;
  $Res call({String imageUrl, bool hasProblem});
}

/// @nodoc
class _$ParcelImageRequestCopyWithImpl<$Res>
    implements $ParcelImageRequestCopyWith<$Res> {
  _$ParcelImageRequestCopyWithImpl(this._value, this._then);

  final ParcelImageRequest _value;
  // ignore: unused_field
  final $Res Function(ParcelImageRequest) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? hasProblem = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      hasProblem: hasProblem == freezed
          ? _value.hasProblem
          : hasProblem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ParcelImageRequestCopyWith<$Res>
    implements $ParcelImageRequestCopyWith<$Res> {
  factory _$ParcelImageRequestCopyWith(
          _ParcelImageRequest value, $Res Function(_ParcelImageRequest) then) =
      __$ParcelImageRequestCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, bool hasProblem});
}

/// @nodoc
class __$ParcelImageRequestCopyWithImpl<$Res>
    extends _$ParcelImageRequestCopyWithImpl<$Res>
    implements _$ParcelImageRequestCopyWith<$Res> {
  __$ParcelImageRequestCopyWithImpl(
      _ParcelImageRequest _value, $Res Function(_ParcelImageRequest) _then)
      : super(_value, (v) => _then(v as _ParcelImageRequest));

  @override
  _ParcelImageRequest get _value => super._value as _ParcelImageRequest;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? hasProblem = freezed,
  }) {
    return _then(_ParcelImageRequest(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      hasProblem: hasProblem == freezed
          ? _value.hasProblem
          : hasProblem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParcelImageRequest implements _ParcelImageRequest {
  const _$_ParcelImageRequest(
      {required this.imageUrl, required this.hasProblem});

  factory _$_ParcelImageRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_ParcelImageRequestFromJson(json);

  @override
  final String imageUrl;
  @override
  final bool hasProblem;

  @override
  String toString() {
    return 'ParcelImageRequest(imageUrl: $imageUrl, hasProblem: $hasProblem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParcelImageRequest &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.hasProblem, hasProblem) ||
                const DeepCollectionEquality()
                    .equals(other.hasProblem, hasProblem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(hasProblem);

  @JsonKey(ignore: true)
  @override
  _$ParcelImageRequestCopyWith<_ParcelImageRequest> get copyWith =>
      __$ParcelImageRequestCopyWithImpl<_ParcelImageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParcelImageRequestToJson(this);
  }
}

abstract class _ParcelImageRequest implements ParcelImageRequest {
  const factory _ParcelImageRequest(
      {required String imageUrl,
      required bool hasProblem}) = _$_ParcelImageRequest;

  factory _ParcelImageRequest.fromJson(Map<String, dynamic> json) =
      _$_ParcelImageRequest.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  bool get hasProblem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParcelImageRequestCopyWith<_ParcelImageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
