// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDataZoneModel _$LoginDataZoneModelFromJson(Map<String, dynamic> json) =>
    LoginDataZoneModel(
      id: json['id'] as int,
      title: json['title'] as String,
      per_drop: json['per_drop'] as String,
      per_hour: json['per_hour'] as String,
    );

Map<String, dynamic> _$LoginDataZoneModelToJson(LoginDataZoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'per_drop': instance.per_drop,
      'per_hour': instance.per_hour,
    };
