import 'package:gen/gen.dart';
import 'package:interview/product/init/config/app_environment.dart';
import 'package:vexana/vexana.dart';

/// This class is responsible for handling all the network related operations
final class ProductNetworkManager extends NetworkManager<Error> {
  /// This class is responsible for handling all the network related operations
  ProductNetworkManager.base()
      : super(
          isEnableLogger: true,
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.baseUrl.value,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization':
                  'Bearer ${AppEnvironmentItems.accessToken.value}',
            },
          ),
        );
}
