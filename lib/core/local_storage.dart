import 'package:get_storage/get_storage.dart';
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
}
