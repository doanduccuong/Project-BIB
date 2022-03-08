part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;

  const factory ProfileState.loading() = Loading;

  const factory ProfileState.success() = Success;
  
  const factory ProfileState.error([String? error]) = Error;
}
