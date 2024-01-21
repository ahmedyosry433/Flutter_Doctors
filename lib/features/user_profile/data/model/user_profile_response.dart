import 'package:json_annotation/json_annotation.dart';

part 'user_profile_response.g.dart';

@JsonSerializable()
class UserProfileResponse {
  String message;
  @JsonKey(name: 'data')
  UserProfileData? userData;
  bool status;
  int code;
  UserProfileResponse({
    required this.message,
    this.userData,
    required this.status,
    required this.code,
  });
  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}

@JsonSerializable()
class UserProfileData {
  int id;
  String name;
  String email;
  int phone;
  String gender;
  UserProfileData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
  });
  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}
