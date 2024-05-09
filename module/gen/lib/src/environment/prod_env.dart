import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'prod_env.g.dart';

///Project environment variables
@Envied(path: 'assets/env/.prod.env', obfuscate: true)
final class ProdEnv implements AppConfiguration {
  ///Project base url
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;

  ///Project auth url
  @EnviedField(varName: 'ACCESS_TOKEN')
  static final String _accessToken = _ProdEnv._accessToken;

  ///Project api key
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv._apiKey;

  ///Project base url
  @override
  String get baseUrl => _baseUrl;

  ///Project api key
  @override
  String get apiKey => _apiKey;
  
  @override
  String get accessToken => _accessToken;
}
