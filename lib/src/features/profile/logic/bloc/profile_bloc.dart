// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:code_union/src/features/profile/logic/model/model_profile.dart';
import 'package:code_union/src/features/profile/logic/repository/profile_repository.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  ProfileBloc({required this.profileRepository}) : super(ProfileInitial()) {
    on<LoadProfile>(_loadProfile);
  }

  void _loadProfile(event, emit) async {
    emit(ProfileLoading());
    try {
      emit(ProfileSuccess(
          profileData: await profileRepository.loadProfileData()));
    } on DioError catch (e) {
      emit(ProfileFailed(message: e.message));
    }
  }
}
