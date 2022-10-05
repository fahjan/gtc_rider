import 'package:flutter/material.dart';
import 'package:gtc_rider/core/local_storage.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';

class LocaleLoginDataSource {
  Future<void> writeToLocalStorageLoginRiderInfo(
      String writeKey, LoginBaseEntity data) async {
    LocalStorage().storage.write(writeKey, data.toJson());
    debugPrint('mohammed :${data.dataa?.api_token}');
  }

  Future<LoginBaseEntity> readFromLocalStorageLoginRiderInfo(
      String writeKey) async {
    Map<String, dynamic>? localLoginData =
        LocalStorage().storage.read<Map<String, dynamic>>(writeKey);
    debugPrint('mohammed :${localLoginData!['data']}');
    return LoginBaseEntity.fromJson(localLoginData);
  }
}
