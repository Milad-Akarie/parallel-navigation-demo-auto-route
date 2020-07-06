// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:app/home/home_page.dart';
import 'package:app/settings/settings_page.dart';

class Routes {
  static const String homePage = '/';
  static const String settingsPage = '/settings-page';
  static const all = <String>{
    homePage,
    settingsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SettingsPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsPage(),
        settings: data,
      );
    },
  };
}
