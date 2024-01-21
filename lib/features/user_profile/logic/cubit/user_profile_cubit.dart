// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, avoid_types_as_parameter_names

import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/features/user_profile/logic/cubit/user_profile_state.dart';

import 'package:flutter/material.dart';

import '../../data/model/user_profile_response.dart';
import '../../data/repo/user_profile_repo.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final UserProfileRepo _userProfileRepo;
  UserProfileCubit(this._userProfileRepo)
      : super(const UserProfileState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  UserProfileResponse? userProfileData;
  Future<void> getUserProfile() async {
    emit(const UserProfileState.loading());

    final response = await _userProfileRepo.getUserProfile();

    response.when(success: (UserProfileResponse) {
      userProfileData = UserProfileResponse;
      print('_________________________________________$UserProfileResponse');
      emit(UserProfileState.success(UserProfileResponse));
    }, failure: (error) {
      emit(UserProfileState.error(error: error.toString()));
    });
  }
}
