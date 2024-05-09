///Product Network Paths
enum ProductNetworkPaths {
  ///GET
  ///Moview path
  ///Dont use [withQuery] method
  movies('3/discover/movie?language=tr'),

  ///Base Url for Image path
  image('https://image.tmdb.org/t/p/original'),
  ;

  const ProductNetworkPaths(this.value);

  ///This value is used to create the path
  final String value;

  ///This callback us give the ability to add query parameters to the path
  String withQuery(String value) => '${this.value}$value';
}
