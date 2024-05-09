// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:interview/product/init/app_initialize.dart';
import 'package:interview/product/init/state_initialize.dart';
import 'package:interview/product/init/theme/app_theme.dart';
import 'package:interview/product/navigation/app_router.dart';
import 'package:interview/product/state/container/product_state_items.dart';

Future<void> main() async {
  await AppInitialize().make();
  runApp(const StateInitialize(child: _MyApp()));
}

final class _MyApp extends StatelessWidget {
  const _MyApp();

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MucahitSimsek Interview',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          ProductStateItems.faService.observer,
        ],
      ),
      theme: AppTheme().themeData,
      darkTheme: AppTheme().themeData,
    );
  }
}
