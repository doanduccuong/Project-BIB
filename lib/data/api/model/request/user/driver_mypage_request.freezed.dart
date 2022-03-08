// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'driver_mypage_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverMypageRequest _$DriverMypageRequestFromJson(Map<String, dynamic> json) {
  return _DriverMypageRequest.fromJson(json);
}

/// @nodoc
class _$DriverMypageRequestTearOff {
  const _$DriverMypageRequestTearOff();

  _DriverMypageRequest call(
      {required String lastName,
      required String firstName,
      required String lastNameKana,
      required String firstNameKana,
      required String telNum,
      required String email}) {
    return _DriverMypageRequest(
      lastName: lastName,
      firstName: firstName,
      lastNameKana: lastNameKana,
      firstNameKana: firstNameKana,
      telNum: telNum,
      email: email,
    );
  }

  DriverMypageRequest fromJson(Map<String, Object> json) {
    return DriverMypageRequest.fromJson(json);
  }
}

/// @nodoc
const $DriverMypageRequest = _$DriverMypageRequestTearOff();

/// @nodoc
mixin _$DriverMypageRequest {
  String get lastName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastNameKana => throw _privateConstructorUsedError;
  String get firstNameKana => throw _privateConstructorUsedError;
  String get telNum => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverMypageRequestCopyWith<DriverMypageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverMypageRequestCopyWith<$Res> {
  factory $DriverMypageRequestCopyWith(
          DriverMypageRequest value, $Res Function(DriverMypageRequest) then) =
      _$DriverMypageRequestCopyWithImpl<$Res>;
  $Res call(
      {String lastName,
      String firstName,
      String lastNameKana,
      String firstNameKana,
      String telNum,
      String email});
}

/// @nodoc
class _$DriverMypageRequestCopyWithImpl<$Res>
    implements $DriverMypageRequestCopyWith<$Res> {
  _$DriverMypageRequestCopyWithImpl(this._value, this._then);

  final DriverMypageRequest _value;
  // ignore: unused_field
  final $Res Function(DriverMypageRequest) _then;

  @override
  $Res call({
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? lastNameKana = freezed,
    Object? firstNameKana = freezed,
    Object? telNum = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameKana: lastNameKana == freezed
          ? _value.lastNameKana
          : lastNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameKana: firstNameKana == freezed
          ? _value.firstNameKana
          : firstNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      telNum: telNum == freezed
          ? _value.telNum
          : telNum // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DriverMypageRequestCopyWith<$Res>
    implements $DriverMypageRequestCopyWith<$Res> {
  factory _$DriverMypageRequestCopyWith(_DriverMypageRequest value,
          $Res Function(_DriverMypageRequest) then) =
      __$DriverMypageRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lastName,
      String firstName,
      String lastNameKana,
      String firstNameKana,
      String telNum,
      String email});
}

/// @nodoc
class __$DriverMypageRequestCopyWithImpl<$Res>
    extends _$DriverMypageRequestCopyWithImpl<$Res>
    implements _$DriverMypageRequestCopyWith<$Res> {
  __$DriverMypageRequestCopyWithImpl(
      _DriverMypageRequest _value, $Res Function(_DriverMypageRequest) _then)
      : super(_value, (v) => _then(v as _DriverMypageRequest));

  @override
  _DriverMypageRequest get _value => super._value as _DriverMypageRequest;

  @override
  $Res call({
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? lastNameKana = freezed,
    Object? firstNameKana = freezed,
    Object? telNum = freezed,
    Object? email = freezed,
  }) {
    return _then(_DriverMypageRequest(
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameKana: lastNameKana == freezed
          ? _value.lastNameKana
          : lastNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameKana: firstNameKana == freezed
          ? _value.firstNameKana
          : firstNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      telNum: telNum == freezed
          ? _value.telNum
          : telNum // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverMypageRequest implements _DriverMypageRequest {
  const _$_DriverMypageRequest(
      {required this.lastName,
      required this.firstName,
      required this.lastNameKana,
      required this.firstNameKana,
      required this.telNum,
      required this.email});

  factory _$_DriverMypageRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DriverMypageRequestFromJson(json);

  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String lastNameKana;
  @override
  final String firstNameKana;
  @override
  final String telNum;
  @override
  final String email;

  @override
  String toString() {
    return 'DriverMypageRequest(lastName: $lastName, firstName: $firstName, lastNameKana: $lastNameKana, firstNameKana: $firstNameKana, telNum: $telNum, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriverMypageRequest &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastNameKana, lastNameKana) ||
                const DeepCollectionEquality()
                    .equals(other.lastNameKana, lastNameKana)) &&
            (identical(other.firstNameKana, firstNameKana) ||
                const DeepCollectionEquality()
                    .equals(other.firstNameKana, firstNameKana)) &&
            (identical(other.telNum, telNum) ||
                const DeepCollectionEquality().equals(other.telNum, telNum)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastNameKana) ^
      const DeepCollectionEquality().hash(firstNameKana) ^
      const DeepCollectionEquality().hash(telNum) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$DriverMypageRequestCopyWith<_DriverMypageRequest> get copyWith =>
      __$DriverMypageRequestCopyWithImpl<_DriverMypageRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DriverMypageRequestToJson(this);
  }
}

abstract class _DriverMypageRequest implements DriverMypageRequest {
  const factory _DriverMypageRequest(
      {required String lastName,
      required String firstName,
      required String lastNameKana,
      required String firstNameKana,
      required String telNum,
      required String email}) = _$_DriverMypageRequest;

  factory _DriverMypageRequest.fromJson(Map<String, dynamic> json) =
      _$_DriverMypageRequest.fromJson;

  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastNameKana => throw _privateConstructorUsedError;
  @override
  String get firstNameKana => throw _privateConstructorUsedError;
  @override
  String get telNum => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverMypageRequestCopyWith<_DriverMypageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
