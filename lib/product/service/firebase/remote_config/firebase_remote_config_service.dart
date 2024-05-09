// ignore_for_file: lines_longer_than_80_chars

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:interview/product/service/firebase/remote_config/remote_config_keys.dart';

///FirebaseRemoteConfigService
final class FirebaseRemoteConfigService {
  ///Constructor
  FirebaseRemoteConfigService() : _remoteConfig = FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _remoteConfig;

  ///Get String from Remote Config
  ///Give [FirebaseRemoteConfigKeys] key
  String getString(String key) => _remoteConfig.getString(key);

  ///Get Int from Remote Config
  int getInt(String key) => _remoteConfig.getInt(key);

  ///Get Double from Remote Config
  double getDouble(String key) => _remoteConfig.getDouble(key);

  ///Get Bool from Remote Config
  bool getBool(String key) => _remoteConfig.getBool(key);

  ///Get
  Future<void> fetchAndActivate() async => _remoteConfig.fetchAndActivate();
}
