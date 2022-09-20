// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['zone'],
  );
  return LoginDataModel(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    zone: LoginDataZoneModel.fromJson(json['zone'] as Map<String, dynamic>),
    api_token: json['api_token'] as String,
    rider_status: json['rider_status'] as String,
    you_ride: json['you_ride'] as String,
  );
}

Map<String, dynamic> _$LoginDataModelToJson(LoginDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'zone': instance.zone,
      'api_token': instance.api_token,
      'rider_status': instance.rider_status,
      'you_ride': instance.you_ride,
    };
