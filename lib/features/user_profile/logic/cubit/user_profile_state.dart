import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState<T> with _$UserProfileState<T> {
  const factory UserProfileState.initial() = _Initial;

  const factory UserProfileState.loading() = Loading;
  const factory UserProfileState.success(T data) = Success<T>;
  const factory UserProfileState.error({required String error}) = Error;
}
