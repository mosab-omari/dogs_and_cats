import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static AppConfig? _appConfig;

  static AppConfig get instance {
    if (dotenv.env[ConfigKeys.dogAPIConfigKey.key]?.isEmpty ?? true) {
      throw UnimplementedError('dog api key has not been initialized');
    }
    if (dotenv.env[ConfigKeys.catAPIConfigKey.key]?.isEmpty ?? true) {
      throw UnimplementedError('cat api key has not been initialized');
    }
    if (dotenv.env[ConfigKeys.tokenConfigKey.key]?.isEmpty ?? true) {
      throw UnimplementedError('token key has not been initialized');
    }
    _appConfig ??= AppConfig._(
      dogAPIKey: dotenv.env[ConfigKeys.dogAPIConfigKey.key]!,
      tokenKey: dotenv.env[ConfigKeys.tokenConfigKey.key]!,
      catAPIKey: dotenv.env[ConfigKeys.catAPIConfigKey.key]!,
    );
    return _appConfig!;
  }

  final String catAPIKey;
  final String dogAPIKey;
  final String tokenKey;

  const AppConfig._(
      {required this.catAPIKey,
      required this.tokenKey,
      required this.dogAPIKey});

  static init({required ConfigType configType}) async {
    await dotenv.load(
      fileName: configType.fileName,
    );
  }
}

enum ConfigKeys {
  dogAPIConfigKey('THE_DOG_API_KEY'),
  catAPIConfigKey('THE_CAT_API_KEY'),
  tokenConfigKey('TOKEN_SECRET');

  final String key;

  const ConfigKeys(this.key);
}

enum ConfigType {
  release(fileName: '${_baseEnvUrl}release.env'),
  debug(fileName: '${_baseEnvUrl}debug.env');

  static const _baseEnvUrl = 'env/';
  final String fileName;

  const ConfigType({required this.fileName});
}
