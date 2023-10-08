import 'package:code_union/src/features/auth/logic/bloc/auth_bloc.dart';
import 'package:code_union/src/features/auth/logic/repository/auth_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class AppScope extends StatefulWidget {
  final Widget child;

  const AppScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<AppScope> createState() => _AppScopeState();
}

class _AppScopeState extends State<AppScope> {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (_) => AuthBloc(authRepository: AuthRepository()),
          ),
        ],
        child: widget.child,
      );
}
