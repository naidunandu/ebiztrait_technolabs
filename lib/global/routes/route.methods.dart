import 'package:ebiztrait_technolabs/views/movie.detail.screen.dart';
import 'package:ebiztrait_technolabs/views/movie.screen.dart';
import 'package:get/get.dart';
import 'package:ebiztrait_technolabs/global/routes/route.names.dart';

RouteName _routeName = RouteName();
class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.movie, page: () => const MovieScreen()),
    GetPage(name: _routeName.movieDetail, page: () => const MovieDetailScreen()),
  ];
}