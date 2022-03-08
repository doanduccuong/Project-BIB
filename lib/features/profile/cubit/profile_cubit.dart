import 'package:base_flutter/api.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_flutter/data/repositories/user_repository.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserRepository userRepository;
  ProfileCubit({required this.userRepository}) : super(ProfileState.initial());

  getDriverProfile() async {
    emit(ProfileState.loading());
    try {
      Future.delayed(Duration(seconds: 5), (){
        emit(ProfileState.success());
      });
      // final result = await userRepository.login(LoginUserRequest(username: username, password: password));
      // if (result.token != "") {
      //   emit(ProfileState.success());
      // } else
      //   emit(ProfileState.error('Invalid username and/or password. Please try again.'));
    } catch (err) {
      emit(ProfileState.error('An error occurred, please try again!'));
    }
  }
}
