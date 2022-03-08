// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ancillary_work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AncillaryWork _$AncillaryWorkFromJson(Map<String, dynamic> json) {
  return _AncillaryWork.fromJson(json);
}

/// @nodoc
class _$AncillaryWorkTearOff {
  const _$AncillaryWorkTearOff();

  _AncillaryWork call(
      {required int ancillaryWorkId,
      String? ancillaryWorkName,
      String? note,
      int? workMinute}) {
    return _AncillaryWork(
      ancillaryWorkId: ancillaryWorkId,
      ancillaryWorkName: ancillaryWorkName,
      note: note,
      workMinute: workMinute,
    );
  }

  AncillaryWork fromJson(Map<String, Object> json) {
    return AncillaryWork.fromJson(json);
  }
}

/// @nodoc
const $AncillaryWork = _$AncillaryWorkTearOff();

/// @nodoc
mixin _$AncillaryWork {
  int get ancillaryWorkId => throw _privateConstructorUsedError;
  String? get ancillaryWorkName => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get workMinute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AncillaryWorkCopyWith<AncillaryWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AncillaryWorkCopyWith<$Res> {
  factory $AncillaryWorkCopyWith(
          AncillaryWork value, $Res Function(AncillaryWork) then) =
      _$AncillaryWorkCopyWithImpl<$Res>;
  $Res call(
      {int ancillaryWorkId,
      String? ancillaryWorkName,
      String? note,
      int? workMinute});
}

/// @nodoc
class _$AncillaryWorkCopyWithImpl<$Res>
    implements $AncillaryWorkCopyWith<$Res> {
  _$AncillaryWorkCopyWithImpl(this._value, this._then);

  final AncillaryWork _value;
  // ignore: unused_field
  final $Res Function(AncillaryWork) _then;

  @override
  $Res call({
    Object? ancillaryWorkId = freezed,
    Object? ancillaryWorkName = freezed,
    Object? note = freezed,
    Object? workMinute = freezed,
  }) {
    return _then(_value.copyWith(
      ancillaryWorkId: ancillaryWorkId == freezed
          ? _value.ancillaryWorkId
          : ancillaryWorkId // ignore: cast_nullable_to_non_nullable
              as int,
      ancillaryWorkName: ancillaryWorkName == freezed
          ? _value.ancillaryWorkName
          : ancillaryWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      workMinute: workMinute == freezed
          ? _value.workMinute
          : workMinute // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AncillaryWorkCopyWith<$Res>
    implements $AncillaryWorkCopyWith<$Res> {
  factory _$AncillaryWorkCopyWith(
          _AncillaryWork value, $Res Function(_AncillaryWork) then) =
      __$AncillaryWorkCopyWithImpl<$Res>;
  @override
  $Res call(
      {int ancillaryWorkId,
      String? ancillaryWorkName,
      String? note,
      int? workMinute});
}

/// @nodoc
class __$AncillaryWorkCopyWithImpl<$Res>
    extends _$AncillaryWorkCopyWithImpl<$Res>
    implements _$AncillaryWorkCopyWith<$Res> {
  __$AncillaryWorkCopyWithImpl(
      _AncillaryWork _value, $Res Function(_AncillaryWork) _then)
      : super(_value, (v) => _then(v as _AncillaryWork));

  @override
  _AncillaryWork get _value => super._value as _AncillaryWork;

  @override
  $Res call({
    Object? ancillaryWorkId = freezed,
    Object? ancillaryWorkName = freezed,
    Object? note = freezed,
    Object? workMinute = freezed,
  }) {
    return _then(_AncillaryWork(
      ancillaryWorkId: ancillaryWorkId == freezed
          ? _value.ancillaryWorkId
          : ancillaryWorkId // ignore: cast_nullable_to_non_nullable
              as int,
      ancillaryWorkName: ancillaryWorkName == freezed
          ? _value.ancillaryWorkName
          : ancillaryWorkName // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      workMinute: workMinute == freezed
          ? _value.workMinute
          : workMinute // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AncillaryWork implements _AncillaryWork {
  const _$_AncillaryWork(
      {required this.ancillaryWorkId,
      this.ancillaryWorkName,
      this.note,
      this.workMinute});

  factory _$_AncillaryWork.fromJson(Map<String, dynamic> json) =>
      _$_$_AncillaryWorkFromJson(json);

  @override
  final int ancillaryWorkId;
  @override
  final String? ancillaryWorkName;
  @override
  final String? note;
  @override
  final int? workMinute;

  @override
  String toString() {
    return 'AncillaryWork(ancillaryWorkId: $ancillaryWorkId, ancillaryWorkName: $ancillaryWorkName, note: $note, workMinute: $workMinute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AncillaryWork &&
            (identical(other.ancillaryWorkId, ancillaryWorkId) ||
                const DeepCollectionEquality()
                    .equals(other.ancillaryWorkId, ancillaryWorkId)) &&
            (identical(other.ancillaryWorkName, ancillaryWorkName) ||
                const DeepCollectionEquality()
                    .equals(other.ancillaryWorkName, ancillaryWorkName)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.workMinute, workMinute) ||
                const DeepCollectionEquality()
                    .equals(other.workMinute, workMinute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ancillaryWorkId) ^
      const DeepCollectionEquality().hash(ancillaryWorkName) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(workMinute);

  @JsonKey(ignore: true)
  @override
  _$AncillaryWorkCopyWith<_AncillaryWork> get copyWith =>
      __$AncillaryWorkCopyWithImpl<_AncillaryWork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AncillaryWorkToJson(this);
  }
}

abstract class _AncillaryWork implements AncillaryWork {
  const factory _AncillaryWork(
      {required int ancillaryWorkId,
      String? ancillaryWorkName,
      String? note,
      int? workMinute}) = _$_AncillaryWork;

  factory _AncillaryWork.fromJson(Map<String, dynamic> json) =
      _$_AncillaryWork.fromJson;

  @override
  int get ancillaryWorkId => throw _privateConstructorUsedError;
  @override
  String? get ancillaryWorkName => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  int? get workMinute => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AncillaryWorkCopyWith<_AncillaryWork> get copyWith =>
      throw _privateConstructorUsedError;
}
