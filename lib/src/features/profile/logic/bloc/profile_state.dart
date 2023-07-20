part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final ModelProfile profileData;

  ProfileSuccess({required this.profileData});
}

class ProfileFailed extends ProfileState {
  final String message;

  ProfileFailed({required this.message});
}
