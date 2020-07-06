// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:app/home/posts/posts_screens.dart';

class PostsRoutes {
  static const String postsList = '/';
  static const String postDetails = '/post-details';
  static const all = <String>{
    postsList,
    postDetails,
  };
}

class PostsRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(PostsRoutes.postsList, page: PostsList),
    RouteDef(PostsRoutes.postDetails, page: PostDetails),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    PostsList: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostsList(),
        settings: data,
      );
    },
    PostDetails: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostDetails(),
        settings: data,
      );
    },
  };
}
