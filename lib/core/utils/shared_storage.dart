import 'package:algooru_flutter_assessment/core/config/app_config.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_storage/get_storage.dart';

import '../constants/enums/languages.dart';
import '../constants/enums/storage_data.dart';

class SharedStorage {
  SharedStorage._();

  static const String _storageName = 'container';
  static final String _tokenKey = AppConfig.instance.tokenKey;
  static GetStorage box = GetStorage(_storageName);
  static const _secureStorage = FlutterSecureStorage();

  static T? get<T>(StorageData key) {
    return box.read<T>(key.name);
  }

  static set<T>(StorageData key, T value) async {
    await box.write(key.name, value);
  }

  static setLanguage(Languages language) async {
    await box.write(StorageData.language.name, language.name);
  }

  static Languages get language => box.read(StorageData.language.name);

  static setToken(String value) async {
    await _secureStorage.write(key: _tokenKey, value: value);
  }

  static Future<String?> get token => _secureStorage.read(key: _tokenKey);

  static Future<bool> get authenticated =>
      _secureStorage.containsKey(key: _tokenKey);
}
