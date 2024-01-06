import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/core/theming/colors.dart';
import 'package:doctor_appointment/features/home/ui/widgets/banner_doctor_fint_nearest.dart';
import 'package:doctor_appointment/features/home/ui/widgets/recommendation_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_speciality.dart';
import 'widgets/top_text_and_notifications_buttton.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.home_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.message_sharp)),
                Container(
                  margin: const EdgeInsets.only(bottom: 9),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: ColorsManager.mainBlue,
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      )),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_month_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_3_outlined)),
              ],
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

