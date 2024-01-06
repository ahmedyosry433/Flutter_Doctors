// ignore_for_file: unused_local_variable


import 'package:doctor_appointment/core/dj/dependency_injection.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/features/login/ui/login_screen.dart';
import 'package:doctor_appointment/features/signup/logic/sgin_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/onboarding/onboradingScreen.dart';
import '../../features/signup/ui/signup_screen.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen()),
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
