import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nbcu_calculator/presentation/calculator/home.dart';
import 'package:nbcu_calculator/presentation/history/history_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,initial: true),
        AutoRoute(page: HistoryRoute.page),
      ];
}
