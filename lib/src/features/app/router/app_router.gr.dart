// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    AppIndexScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AppIndexScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    MapRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    FavouriteRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MapScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    FavouriteScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavouriteScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LoginScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          AppIndexScreenRoute.name,
          path: 'app-index',
          children: [
            RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: AppIndexScreenRoute.name,
              children: [
                RouteConfig(
                  HomeScreenRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            RouteConfig(
              MapRouter.name,
              path: 'map',
              parent: AppIndexScreenRoute.name,
              children: [
                RouteConfig(
                  MapScreenRoute.name,
                  path: '',
                  parent: MapRouter.name,
                )
              ],
            ),
            RouteConfig(
              FavouriteRouter.name,
              path: 'favourite',
              parent: AppIndexScreenRoute.name,
              children: [
                RouteConfig(
                  FavouriteScreenRoute.name,
                  path: '',
                  parent: FavouriteRouter.name,
                )
              ],
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: AppIndexScreenRoute.name,
              children: [
                RouteConfig(
                  ProfileScreenRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [AppIndexScreen]
class AppIndexScreenRoute extends PageRouteInfo<void> {
  const AppIndexScreenRoute({List<PageRouteInfo>? children})
      : super(
          AppIndexScreenRoute.name,
          path: 'app-index',
          initialChildren: children,
        );

  static const String name = 'AppIndexScreenRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [EmptyRouterPage]
class MapRouter extends PageRouteInfo<void> {
  const MapRouter({List<PageRouteInfo>? children})
      : super(
          MapRouter.name,
          path: 'map',
          initialChildren: children,
        );

  static const String name = 'MapRouter';
}

/// generated route for
/// [EmptyRouterPage]
class FavouriteRouter extends PageRouteInfo<void> {
  const FavouriteRouter({List<PageRouteInfo>? children})
      : super(
          FavouriteRouter.name,
          path: 'favourite',
          initialChildren: children,
        );

  static const String name = 'FavouriteRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [MapScreen]
class MapScreenRoute extends PageRouteInfo<void> {
  const MapScreenRoute()
      : super(
          MapScreenRoute.name,
          path: '',
        );

  static const String name = 'MapScreenRoute';
}

/// generated route for
/// [FavouriteScreen]
class FavouriteScreenRoute extends PageRouteInfo<void> {
  const FavouriteScreenRoute()
      : super(
          FavouriteScreenRoute.name,
          path: '',
        );

  static const String name = 'FavouriteScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}
