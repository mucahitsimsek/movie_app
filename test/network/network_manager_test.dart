import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/init/config/app_environment.dart';
import 'package:interview/product/service/manager/product_network_manager.dart';
import 'package:interview/product/service/manager/product_network_paths.dart';
import 'package:vexana/vexana.dart';

void main() {
  late ProductNetworkManager networkManager;
  setUp(() {
    AppEnvironment.general();
    networkManager = ProductNetworkManager.base();
  });

  test('get movies from api', () async {
    final response = await networkManager.send<BaseModel, BaseModel>(
      ProductNetworkPaths.movies.value,
      parseModel: BaseModel(),
      method: RequestType.GET,
    );
    log(response.error?.model?.statusMessage.toString() ?? 'Null');

    expect(response.data, isNotNull);
  });
}
