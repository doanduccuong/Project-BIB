// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryListResponse _$DeliveryListResponseFromJson(Map<String, dynamic> json) {
  return _DeliveryListResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryListResponseTearOff {
  const _$DeliveryListResponseTearOff();

  _DeliveryListResponse call({String? message, List<Delivery>? data}) {
    return _DeliveryListResponse(
      message: message,
      data: data,
    );
  }

  DeliveryListResponse fromJson(Map<String, Object> json) {
    return DeliveryListResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryListResponse = _$DeliveryListResponseTearOff();

/// @nodoc
mixin _$DeliveryListResponse {
  String? get message => throw _privateConstructorUsedError;
  List<Delivery>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryListResponseCopyWith<DeliveryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryListResponseCopyWith<$Res> {
  factory $DeliveryListResponseCopyWith(DeliveryListResponse value,
          $Res Function(DeliveryListResponse) then) =
      _$DeliveryListResponseCopyWithImpl<$Res>;
  $Res call({String? message, List<Delivery>? data});
}

/// @nodoc
class _$DeliveryListResponseCopyWithImpl<$Res>
    implements $DeliveryListResponseCopyWith<$Res> {
  _$DeliveryListResponseCopyWithImpl(this._value, this._then);

  final DeliveryListResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryListResponse) _then;

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
              as List<Delivery>?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryListResponseCopyWith<$Res>
    implements $DeliveryListResponseCopyWith<$Res> {
  factory _$DeliveryListResponseCopyWith(_DeliveryListResponse value,
          $Res Function(_DeliveryListResponse) then) =
      __$DeliveryListResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, List<Delivery>? data});
}

/// @nodoc
class __$DeliveryListResponseCopyWithImpl<$Res>
    extends _$DeliveryListResponseCopyWithImpl<$Res>
    implements _$DeliveryListResponseCopyWith<$Res> {
  __$DeliveryListResponseCopyWithImpl(
      _DeliveryListResponse _value, $Res Function(_DeliveryListResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryListResponse));

  @override
  _DeliveryListResponse get _value => super._value as _DeliveryListResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DeliveryListResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Delivery>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryListResponse implements _DeliveryListResponse {
  const _$_DeliveryListResponse({this.message, this.data});

  factory _$_DeliveryListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryListResponseFromJson(json);

  @override
  final String? message;
  @override
  final List<Delivery>? data;

  @override
  String toString() {
    return 'DeliveryListResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryListResponse &&
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
  _$DeliveryListResponseCopyWith<_DeliveryListResponse> get copyWith =>
      __$DeliveryListResponseCopyWithImpl<_DeliveryListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryListResponseToJson(this);
  }
}

abstract class _DeliveryListResponse implements DeliveryListResponse {
  const factory _DeliveryListResponse({String? message, List<Delivery>? data}) =
      _$_DeliveryListResponse;

  factory _DeliveryListResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryListResponse.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  List<Delivery>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryListResponseCopyWith<_DeliveryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
