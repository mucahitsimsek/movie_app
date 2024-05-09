import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:interview/product/service/firebase/analytics/firebase_analytics_service.dart';
import 'package:interview/product/service/manager/product_network_manager.dart';

/// Product state container
@immutable
final class ProductStateContainer {
  const ProductStateContainer._();

  static final _getIt = GetIt.I;

  /// Setup method for the container
  static void setupContainer() {
    _getIt
      ..registerSingleton<ProductNetworkManager>(
        ProductNetworkManager.base(),
      )
      ..registerSingleton<FAService>(FAService.setup());
  }

  /// Read method for the container
  static T read<T extends Object>() => _getIt<T>();
}
