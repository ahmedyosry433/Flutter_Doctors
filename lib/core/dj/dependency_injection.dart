import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_service.dart';
import 'package:doctor_appointment/core/networking/dio_factory.dart';
import 'package:doctor_appointment/features/login/data/repos/login_repo.dart';
import 'package:doctor_appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/signup/data/repo/sign_up_repo.dart';
import '../../features/signup/logic/sgin_up_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetit() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerLazySingleton(() => LoginCubit(getIt()));
  // signup
  getIt.registerLazySingleton(() => SignupRepo(getIt()));
  getIt.registerLazySingleton(() => SignupCubit(getIt()));
}
