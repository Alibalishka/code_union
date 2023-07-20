// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:code_union/src/features/auth/logic/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
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
      Box tokenBox = Hive.box('token');
      String token = await authRepository.logInUser(event.email, event.password);
      tokenBox.put('accessToken', token);
      emit(LogInSuccess());
    } on DioError catch (e) {
      emit(LogInFailed(message: e.message));
    }
  }
}
