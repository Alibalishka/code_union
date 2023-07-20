part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

// Авторизация
class LogInLoading extends AuthState {}

class LogInSuccess extends AuthState {}

class LogInFailed extends AuthState {
  final String message;

  LogInFailed({required this.message});
}
