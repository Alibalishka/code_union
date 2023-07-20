part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

// Авторизация
class LogInUser extends AuthEvent {
  final String email;
  final String password;

  LogInUser({required this.email, required this.password});
}
