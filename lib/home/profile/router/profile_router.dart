import 'package:auto_route/auto_route_annotations.dart';

import '../profile_screens.dart';

@MaterialAutoRouter(
  routesClassName: "ProfileRoutes",
  routes: [
    MaterialRoute(page: ProfileHome, initial: true),
    MaterialRoute(page: ProfileDetails),
  ],
)
class $ProfileRouter {}
