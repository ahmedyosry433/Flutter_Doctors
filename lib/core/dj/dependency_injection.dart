import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

import '../../features/signup/data/repo/sign_up_repo.dart';
import '../../features/signup/logic/sgin_up_cubit.dart';
import '../../features/user_profile/data/repo/user_profile_repo.dart';
import '../../features/user_profile/logic/cubit/user_profile_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> setupGetit() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // signup
  getIt.registerLazySingleton(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  // user profile
  getIt.registerLazySingleton(() => UserProfileRepo(getIt()));
  getIt.registerFactory<UserProfileCubit>(() => UserProfileCubit(getIt()));
}
