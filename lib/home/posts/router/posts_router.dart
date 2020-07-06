import 'package:auto_route/auto_route_annotations.dart';

import '../posts_screens.dart';

@MaterialAutoRouter(
  routesClassName: "PostsRoutes",
  routes: [
    MaterialRoute(page: PostsList, initial: true),
    MaterialRoute(page: PostDetails),
  ],
)
class $PostsRouter {}
