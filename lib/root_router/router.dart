import 'package:app/home/home_page.dart';
import 'package:app/settings/settings_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage, initial: true),
  MaterialRoute(page: SettingsPage),
])
class $Router {}
