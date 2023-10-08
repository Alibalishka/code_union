import 'package:code_union/src/core/resources/app_theme.dart';
import 'package:code_union/src/features/app/router/app_router.dart';
import 'package:code_union/src/features/app/widgets/app_scope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

class CodeUnionApp extends StatelessWidget {
  const CodeUnionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScope(child: AppConfiguration());
  }
}

class AppConfiguration extends StatefulWidget {
  const AppConfiguration({super.key});

  @override
  State<AppConfiguration> createState() => _AppConfigurationState();
}

class _AppConfigurationState extends State<AppConfiguration> {
  Box tokenBox = Hive.box('token');
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // Блокируем ориентацию по горизонтали
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return CupertinoApp.router(
      title: 'Code Union',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        initialRoutes: [
          tokenBox.isEmpty
              ? const LoginScreenRoute()
              : const AppIndexScreenRoute()
        ],
      ),
    );
  }
}
