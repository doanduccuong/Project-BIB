// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_enter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationEnterRequest _$_$_LocationEnterRequestFromJson(
    Map<String, dynamic> json) {
  return _$_LocationEnterRequest(
    withinRange: json['withinRange'] as bool?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_LocationEnterRequestToJson(
        _$_LocationEnterRequest instance) =>
    <String, dynamic>{
      'withinRange': instance.withinRange,
      'lat': instance.lat,
      'lon': instance.lon,
    };
