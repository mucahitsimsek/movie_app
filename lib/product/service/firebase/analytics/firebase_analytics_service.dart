import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';

/// Firebase Analytics Service
final class FAService {
  /// Constructor
  FAService.setup() {
    _analytics = FirebaseAnalytics.instance;
    _analytics?.setAnalyticsCollectionEnabled(true);
  }

  static FirebaseAnalytics? _analytics;

  /// Firebase Analytics Observer
  final FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(
    analytics: _analytics ?? FirebaseAnalytics.instance,
  );

  /// Log event
  Future<void> logEvent({
    required String name,
    required Map<String, dynamic> parameters,
  }) async {
    log('FAService: logEvent: $name, $parameters');
    await _analytics?.logEvent(name: name, parameters: parameters);
  }
}
