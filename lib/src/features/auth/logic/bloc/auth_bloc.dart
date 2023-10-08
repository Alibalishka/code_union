// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:code_union/src/core/utils/hive_init.dart';
import 'package:code_union/src/features/auth/logic/model/user_model.dart';
import 'package:code_union/src/features/auth/logic/repository/auth_repository.dart';
import 'package:code_union/src/features/auth/widget/widgets/auth_alert.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(AuthInitial()) {
    on<LogInUser>(_logInUser);
  }

  void _logInUser(event, emit) async {
    emit(LogInLoading());
    try {
      UserModel userData =
          await authRepository.logInUser(event.email, event.password);
      AppHive.saveToken(userData.tokens.accessToken);
      AppHive.saveUser(userData.user);
      emit(LogInSuccess());
    } on DioError catch (e) {
      emit(LogInFailed(message: e.message));
    } catch (e) {
      emit(LogInFailed(message: AuthAlertText.login));
    }
  }
}
