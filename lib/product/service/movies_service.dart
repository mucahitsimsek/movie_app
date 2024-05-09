import 'package:gen/gen.dart';
import 'package:interview/product/service/manager/product_network_manager.dart';
import 'package:interview/product/service/manager/product_network_paths.dart';
import 'package:vexana/vexana.dart';

/// Service class for movies.
final class MoviesService {
  ///Constructor
  MoviesService({required ProductNetworkManager productNetworkManager})
      : _productNetworkManager = productNetworkManager;

  late final ProductNetworkManager _productNetworkManager;

  ///Fetch movies
  ///Returns a list of movies
  Future<BaseModel?> fetchMovies({int page = 1}) async {
    final response = await _productNetworkManager.send<BaseModel, BaseModel>(
      ProductNetworkPaths.movies.withQuery('&page=$page'),
      parseModel: BaseModel(),
      method: RequestType.GET,
    );

    return response.data;
  }
}
