import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:code_union/src/features/auth/widget/pages/login_page.dart';
import 'package:code_union/src/features/favourite/widget/pages/favourite_page.dart';
import 'package:code_union/src/features/home/widget/pages/home_page.dart';
import 'package:code_union/src/features/index.dart';
import 'package:code_union/src/features/map/widget/pages/map_page.dart';
import 'package:code_union/src/features/profile/widget/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen,Provider',
  routes: [
    AutoRoute(page: LoginScreen, path: '/'),
    AutoRoute(
      page: AppIndexScreen,
      path: 'app-index',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'home',
          name: 'HomeRouter',
          children: [AutoRoute(page: HomeScreen, path: '')],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'map',
          name: 'MapRouter',
          children: [AutoRoute(page: MapScreen, path: '')],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'favourite',
          name: 'FavouriteRouter',
          children: [AutoRoute(page: FavouriteScreen, path: '')],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'ProfileRouter',
          children: [AutoRoute(page: ProfileScreen, path: '')],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
