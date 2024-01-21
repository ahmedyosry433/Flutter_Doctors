import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
          icon: Icon(
            Icons.home_outlined,
            color: index == 0 ? ColorsManager.mainBlue : Colors.black,
          ),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                index = 1;
              });
            },
            icon: Icon(
              Icons.message_sharp,
              color: index == 1 ? ColorsManager.mainBlue : Colors.black,
            )),
        Container(
          margin: const EdgeInsets.only(bottom: 9),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: index == 2 ? Colors.white : ColorsManager.mainBlue,
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: Icon(
                Icons.search_rounded,
                color: index == 2 ? ColorsManager.mainBlue : Colors.white,
              )),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                index = 3;
              });
            },
            icon: Icon(
              Icons.calendar_month_outlined,
              color: index == 3 ? ColorsManager.mainBlue : Colors.black,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                index = 4;
              });

              context.pushNamed(Routes.userProfileScreen);
            },
            icon: Icon(
              Icons.person_3_outlined,
              color: index == 4 ? ColorsManager.mainBlue : Colors.black,
            )),
      ],
    );
  }
}
