// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'parcel_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParcelPhoto _$ParcelPhotoFromJson(Map<String, dynamic> json) {
  return _ParcelPhoto.fromJson(json);
}

/// @nodoc
class _$ParcelPhotoTearOff {
  const _$ParcelPhotoTearOff();

  _ParcelPhoto call(
      {required int parcelPhotoId, String? imageUrl, bool? hasProblem}) {
    return _ParcelPhoto(
      parcelPhotoId: parcelPhotoId,
      imageUrl: imageUrl,
      hasProblem: hasProblem,
    );
  }

  ParcelPhoto fromJson(Map<String, Object> json) {
    return ParcelPhoto.fromJson(json);
  }
}

/// @nodoc
const $ParcelPhoto = _$ParcelPhotoTearOff();

/// @nodoc
mixin _$ParcelPhoto {
  int get parcelPhotoId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get hasProblem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelPhotoCopyWith<ParcelPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelPhotoCopyWith<$Res> {
  factory $ParcelPhotoCopyWith(
          ParcelPhoto value, $Res Function(ParcelPhoto) then) =
      _$ParcelPhotoCopyWithImpl<$Res>;
  $Res call({int parcelPhotoId, String? imageUrl, bool? hasProblem});
}

/// @nodoc
class _$ParcelPhotoCopyWithImpl<$Res> implements $ParcelPhotoCopyWith<$Res> {
  _$ParcelPhotoCopyWithImpl(this._value, this._then);

  final ParcelPhoto _value;
  // ignore: unused_field
  final $Res Function(ParcelPhoto) _then;

  @override
  $Res call({
    Object? parcelPhotoId = freezed,
    Object? imageUrl = freezed,
    Object? hasProblem = freezed,
  }) {
    return _then(_value.copyWith(
      parcelPhotoId: parcelPhotoId == freezed
          ? _value.parcelPhotoId
          : parcelPhotoId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasProblem: hasProblem == freezed
          ? _value.hasProblem
          : hasProblem // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ParcelPhotoCopyWith<$Res>
    implements $ParcelPhotoCopyWith<$Res> {
  factory _$ParcelPhotoCopyWith(
          _ParcelPhoto value, $Res Function(_ParcelPhoto) then) =
      __$ParcelPhotoCopyWithImpl<$Res>;
  @override
  $Res call({int parcelPhotoId, String? imageUrl, bool? hasProblem});
}

/// @nodoc
class __$ParcelPhotoCopyWithImpl<$Res> extends _$ParcelPhotoCopyWithImpl<$Res>
    implements _$ParcelPhotoCopyWith<$Res> {
  __$ParcelPhotoCopyWithImpl(
      _ParcelPhoto _value, $Res Function(_ParcelPhoto) _then)
      : super(_value, (v) => _then(v as _ParcelPhoto));

  @override
  _ParcelPhoto get _value => super._value as _ParcelPhoto;

  @override
  $Res call({
    Object? parcelPhotoId = freezed,
    Object? imageUrl = freezed,
    Object? hasProblem = freezed,
  }) {
    return _then(_ParcelPhoto(
      parcelPhotoId: parcelPhotoId == freezed
          ? _value.parcelPhotoId
          : parcelPhotoId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasProblem: hasProblem == freezed
          ? _value.hasProblem
          : hasProblem // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParcelPhoto implements _ParcelPhoto {
  const _$_ParcelPhoto(
      {required this.parcelPhotoId, this.imageUrl, this.hasProblem});

  factory _$_ParcelPhoto.fromJson(Map<String, dynamic> json) =>
      _$_$_ParcelPhotoFromJson(json);

  @override
  final int parcelPhotoId;
  @override
  final String? imageUrl;
  @override
  final bool? hasProblem;

  @override
  String toString() {
    return 'ParcelPhoto(parcelPhotoId: $parcelPhotoId, imageUrl: $imageUrl, hasProblem: $hasProblem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParcelPhoto &&
            (identical(other.parcelPhotoId, parcelPhotoId) ||
                const DeepCollectionEquality()
                    .equals(other.parcelPhotoId, parcelPhotoId)) &&
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
      const DeepCollectionEquality().hash(parcelPhotoId) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(hasProblem);

  @JsonKey(ignore: true)
  @override
  _$ParcelPhotoCopyWith<_ParcelPhoto> get copyWith =>
      __$ParcelPhotoCopyWithImpl<_ParcelPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParcelPhotoToJson(this);
  }
}

abstract class _ParcelPhoto implements ParcelPhoto {
  const factory _ParcelPhoto(
      {required int parcelPhotoId,
      String? imageUrl,
      bool? hasProblem}) = _$_ParcelPhoto;

  factory _ParcelPhoto.fromJson(Map<String, dynamic> json) =
      _$_ParcelPhoto.fromJson;

  @override
  int get parcelPhotoId => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  bool? get hasProblem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParcelPhotoCopyWith<_ParcelPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
