// ignore_for_file: file_names

import 'package:doctor_appointment/features/onboarding/widgets/doc_image_background_logo.dart';
import 'package:doctor_appointment/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctor_appointment/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/style.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DocImageBackgroundLogo(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h),
                    const GetStatedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
