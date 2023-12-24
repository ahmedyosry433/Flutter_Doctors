// ignore_for_file: unused_local_variable

import 'package:doctor_appointment/core/dj/dependency_injection.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/onboarding/onboradingScreen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be pass in any screen like this ( arguments as className)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboarderScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child:const LoginScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(' No Route Defined For ${settings.name}'),
                  ),
                ));
    }
  }
}
