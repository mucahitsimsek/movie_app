import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview/product/init/config/app_environment.dart';
import 'package:interview/product/service/firebase/firebase_options.dart';
import 'package:interview/product/state/container/product_state_container.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

///AppInitialize class for project initialize
final class AppInitialize {
  ///Project first basic required initialize
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error.toString());
    });
  }

  ///Project initialize class for operation and configuration
  Future<void> _initialize() async {
    AppEnvironment.general();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    FlutterError.onError = (FlutterErrorDetails details) {
      Logger().e(details.exceptionAsString());
    };
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await DeviceUtility.instance.initPackageInfo();

    ProductStateContainer.setupContainer();
  }
}
