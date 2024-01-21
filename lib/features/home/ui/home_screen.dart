// ignore_for_file: must_be_immutable

import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/features/home/ui/widgets/banner_doctor_fint_nearest.dart';
import 'package:doctor_appointment/features/home/ui/widgets/bottom_navigation_bar.dart';
import 'package:doctor_appointment/features/home/ui/widgets/recommendation_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_speciality.dart';
import 'widgets/top_text_and_notifications_buttton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  void initState() {
    super.initState();
    // context.read<UserProfileCubit>().getUserProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationbar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  const TopTextAndNotificationButton(),
                  verticalSpace(40),
                  const BannerDoctorAndFingNearest(),
                  verticalSpace(24),
                  const DoctorSpeciality(),
                  const RecommendationDoctor(),
                ],
              ),
            ),

            // BottomNavigationBar(
            //   elevation: 0,
            //   backgroundColor: Colors.amber,
            //   items: const [
            //     BottomNavigationBarItem(
            //       label: 'home',
            //       icon: Icon(Icons.home_outlined),
            //     ),
            //     BottomNavigationBarItem(
            //         backgroundColor: Colors.black,
            //         label: 'message',
            //         icon: Icon(Icons.message_sharp)),
            //     BottomNavigationBarItem(
            //         label: 'search', icon: Icon(Icons.search)),
            //     BottomNavigationBarItem(
            //         label: 'calendar',
            //         icon: Icon(Icons.calendar_month_outlined)),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
