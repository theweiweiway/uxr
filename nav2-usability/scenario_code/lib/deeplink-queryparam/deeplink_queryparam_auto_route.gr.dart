// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'deeplink_queryparam_auto_route.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BooksListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final queryParams = data.queryParams;
          final args = data.argsAs<BooksListRouteArgs>(
              orElse: () =>
                  BooksListRouteArgs(filter: queryParams.optString('filter')));
          return _i3.BooksListScreen(filter: args.filter);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(BooksListRoute.name, path: '/'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class BooksListRoute extends _i1.PageRouteInfo<BooksListRouteArgs> {
  BooksListRoute({String? filter})
      : super(name,
            path: '/',
            args: BooksListRouteArgs(filter: filter),
            rawQueryParams: {'filter': filter});

  static const String name = 'BooksListRoute';
}

class BooksListRouteArgs {
  const BooksListRouteArgs({this.filter});

  final String? filter;
}
