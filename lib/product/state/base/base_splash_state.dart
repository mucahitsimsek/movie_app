import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/service/firebase/remote_config/firebase_remote_config_service.dart';
import 'package:interview/product/service/firebase/remote_config/remote_config_keys.dart';
import 'package:interview/product/state/container/product_state_items.dart';
import 'package:interview/product/utility/constants/product_constants.dart';
import 'package:interview/product/widget/gap/app_gap.dart';
import 'package:kartal/kartal.dart';

///SplashViewMixin
abstract class BaseSplashState<T extends StatefulWidget> extends State<T> {
  final _firebaseRCS = FirebaseRemoteConfigService();

  @override
  void initState() {
    super.initState();
    Future.microtask(_initialize);
  }

  Future<void> _initialize() async {
    await _firebaseRCS.fetchAndActivate();
    _checkAppVersion();
    await ProductStateItems.faService.logEvent(
      name: 'initialized_app',
      parameters: {
        'app_version': ''.ext.version,
        'device': Platform.isAndroid ? 'android' : 'ios',
      },
    );
  }

  void _checkAppVersion() {
    final dbVersion = _firebaseRCS.getString(
      FirebaseRemoteConfigKeys.appVersion,
    );
    final appVersion = ''.ext.version;

    if (dbVersion != appVersion) {
      _showDialog(appVersion, dbVersion);
      return;
    }
  }

  void _showDialog(String currentVersion, String dbVersion) {
    if (!mounted) return;
    showAdaptiveDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            ProductConst.newVersionTitle,
            style: context.general.textTheme.bodyLarge!.copyWith(
              color: ColorName.background,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ProductConst.newVersionDescription,
              ),
              const AppGap.small(),
              Text('${ProductConst.currentVersion} : $currentVersion'),
              Text('${ProductConst.newVersion} : $dbVersion'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                ProductConst.githubAccount.ext.launchWebsiteCustom();
                context.maybePop();
              },
              child: const Text(ProductConst.update),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(ProductConst.later),
            ),
          ],
        );
      },
    );
  }
}
