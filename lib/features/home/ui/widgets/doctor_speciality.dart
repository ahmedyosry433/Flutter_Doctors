import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Doctor Speciality', style: TextStyles.font18BlackSemiBold),
            Text('See All', style: TextStyles.font12BlueRegular)
          ],
        ),
        verticalSpace(16),
        SizedBox(
          height: 86.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Column(
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsManager.lighterGray,
                    ),
                    child: Image.asset(
                      'assets/images/home_general_logo.png',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  verticalSpace(12),
                  Text('General', style: TextStyles.font12BlackRegular)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
