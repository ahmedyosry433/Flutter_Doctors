import '../../../../core/helper/shared_preferences_helper.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../model/user_profile_response.dart';

class UserProfileRepo {
  final ApiService _apiService;

  UserProfileRepo(this._apiService);
  SharedPreferencesHelper? prefs;
  Future<ApiResult<UserProfileResponse>> getUserProfile() async {
    try {
      final response =
          await _apiService.getUserProfile(prefs!.getValueForKey('token'));
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
