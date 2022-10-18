// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginBaseModel _$LoginBaseModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
  );
  return LoginBaseModel(
    data: json['data'] == null
        ? null
        : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
  )..error = json['error'] as String?;
}

Map<String, dynamic> _$LoginBaseModelToJson(LoginBaseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };
