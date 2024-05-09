// ignore_for_file: lines_longer_than_80_chars

import 'package:interview/product/service/firebase/analytics/firebase_analytics_service.dart';
import 'package:interview/product/service/manager/product_network_manager.dart';
import 'package:interview/product/state/container/product_state_container.dart';

/// ProductStateItems
final class ProductStateItems {
  const ProductStateItems._();

  /// Get network manager
  static ProductNetworkManager get productNetworkManager =>
      ProductStateContainer.read<ProductNetworkManager>();

  /// Get firebase analytics service
  static FAService get faService => ProductStateContainer.read<FAService>();
}
