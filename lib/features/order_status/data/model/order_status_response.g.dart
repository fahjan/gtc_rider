// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusResponse _$OrderStatusResponseFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['message'],
  );
  return OrderStatusResponse(
    json['message'] as String,
  );
}

Map<String, dynamic> _$OrderStatusResponseToJson(
        OrderStatusResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
