import 'package:auto_route/auto_route.dart';
import 'package:code_union/src/features/app/router/app_router.dart';
import 'package:code_union/src/features/navigation_bar.dart';
import 'package:flutter/material.dart';

class AppIndexScreen extends StatelessWidget {
  const AppIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRouter(),
        MapRouter(),
        FavouriteRouter(),
        ProfileRouter(),
      ],
      builder: (context, child, animation) => Scaffold(
        body: FadeTransition(opacity: animation, child: child),
        bottomNavigationBar: const NavbarWidget(),
      ),
    );
  }
}
