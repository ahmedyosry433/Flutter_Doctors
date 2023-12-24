import 'package:doctor_appointment/core/dj/dependency_injection.dart';
import 'package:doctor_appointment/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'doc_app.dart';

void main() {
  setupGetit();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
