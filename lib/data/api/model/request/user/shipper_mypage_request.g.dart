// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper_mypage_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipperMypageRequest _$_$_ShipperMypageRequestFromJson(
    Map<String, dynamic> json) {
  return _$_ShipperMypageRequest(
    lastName: json['lastName'] as String,
    firstName: json['firstName'] as String,
    lastNameKana: json['lastNameKana'] as String,
    firstNameKana: json['firstNameKana'] as String,
    telNum: json['telNum'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_ShipperMypageRequestToJson(
        _$_ShipperMypageRequest instance) =>
    <String, dynamic>{
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'lastNameKana': instance.lastNameKana,
      'firstNameKana': instance.firstNameKana,
      'telNum': instance.telNum,
      'email': instance.email,
    };
