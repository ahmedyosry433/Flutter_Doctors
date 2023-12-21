import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/onboradingScreen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be pass in any screen like this ( arguments as className)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboarderScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

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
