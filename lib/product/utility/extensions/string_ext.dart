import 'package:interview/product/service/manager/product_network_paths.dart';
import 'package:interview/product/widget/custom_network_image/app_network_image.dart';

///This extension method is used to add query parameters to the path
extension StringExt on String {
  ///This extension method is used to add query parameters to the path
  AppNetworkImage get asNetworkImage =>
      AppNetworkImage(imageUrl: ProductNetworkPaths.image.withQuery(this));
}
