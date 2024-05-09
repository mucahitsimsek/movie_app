import 'package:gen/gen.dart';

///app environment
final class AppEnvironment {
  ///app general environment
  AppEnvironment.general() {
    _config = ProdEnv();
  }

  static late final AppConfiguration _config;
}

///Project environment type
enum AppEnvironmentItems {
  ///Project base url
  baseUrl,

  ///Project api key
  apiKey,

  ///Project access token
  accessToken,
  ;

  ///Project environment type
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.accessToken:
          return AppEnvironment._config.accessToken;
      }
    } catch (e) {
      throw Exception('AppEnvironmentType is not initialized $e');
    }
  }
}
