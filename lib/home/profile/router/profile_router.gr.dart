// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:app/home/profile/profile_screens.dart';

class ProfileRoutes {
  static const String profileHome = '/';
  static const String profileDetails = '/profile-details';
  static const all = <String>{
    profileHome,
    profileDetails,
  };
}

class ProfileRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ProfileRoutes.profileHome, page: ProfileHome),
    RouteDef(ProfileRoutes.profileDetails, page: ProfileDetails),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ProfileHome: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileHome(),
        settings: data,
      );
    },
    ProfileDetails: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileDetails(),
        settings: data,
      );
    },
  };
}
