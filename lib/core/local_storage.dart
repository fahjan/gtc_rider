import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';

class LocalStorage {
  late GetStorage _storage;

  static LocalStorage? _instance;

  LocalStorage._() {
    _storage = GetStorage();
  }

  factory LocalStorage() {
    return _instance ??= LocalStorage._();
  }

  GetStorage get storage => _storage;

  Future<void> writeToLocalStorageLoginRiderInfo(
      String writeKey, LoginBaseEntity data) async {
    storage.write(writeKey, data.toJson());
    debugPrint('mohammed :${data.dataa?.api_token}');
  }

  Future<LoginBaseEntity> readFromLocalStorageLoginRiderInfo(
      String writeKey) async {
    Map<String, dynamic>? localLoginData =
        GetStorage().read<Map<String, dynamic>>(writeKey);
    debugPrint('mohammed :${localLoginData!['data']}');
    return LoginBaseEntity.fromJson(localLoginData);
  }
}
