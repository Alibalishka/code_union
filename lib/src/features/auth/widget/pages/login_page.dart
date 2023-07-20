import 'package:auto_route/auto_route.dart';
import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:code_union/src/core/widgets/alert.dart';
import 'package:code_union/src/core/widgets/column_spacer.dart';
import 'package:code_union/src/core/widgets/custom_app_bar.dart';
import 'package:code_union/src/core/widgets/custom_button.dart';
import 'package:code_union/src/core/widgets/custom_text_field.dart';
import 'package:code_union/src/features/app/router/app_router.dart';
import 'package:code_union/src/features/auth/logic/bloc/auth_bloc.dart';
import 'package:code_union/src/features/auth/widget/widgets/auth_alert.dart';
import 'package:code_union/src/features/auth/widget/widgets/auth_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CustomAppBar(text: 'Авторизация'),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: AppColors.whiteColor,
            child: Column(
              children: [
                CustomTextField(
                  placeholder: 'Логин или почта',
                  controller: emailController,
                ),
                const AuthDivider(),
                CustomTextField(
                  placeholder: 'Пароль',
                  isPassword: true,
                  controller: passwordController,
                ),
              ],
            ),
          ),
          const ColumnSpacer(3.2),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state is LogInSuccess
                  ? context.router.replace(const AppIndexScreenRoute())
                  : null;
              state is LogInFailed
                  ? AppAlertWidgets.customAlert(context, AuthAlertText.login)
                  : null;
            },
            builder: (context, state) {
              return CustomButton(
                onPressed: () => context.read<AuthBloc>().add(LogInUser(
                      email: emailController.text,
                      password: passwordController.text,
                    )),
                text: state is LogInLoading ? 'Загрузка..' : 'Войти',
              );
            },
          ),
          const ColumnSpacer(1),
          CustomButton(
            onPressed: () =>
                AppAlertWidgets.customAlert(context, AuthAlertText.register),
            text: 'Зарегистрироваться',
          ),
        ],
      ),
    );
  }
}
