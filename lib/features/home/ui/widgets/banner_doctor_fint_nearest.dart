import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/style.dart';
import '../../../../core/widgets/app_text_button.dart';

class BannerDoctorAndFingNearest extends StatelessWidget {
  const BannerDoctorAndFingNearest({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/home_background_containar.png',
        ),
        Positioned(
          right: 10.h,
          bottom: -4,
          child: Image.asset(
            'assets/images/home_doctor.png',
            width: 136.w,
            height: 197.h,
          ),
        ),
        Positioned(
          top: 12.h,
          left: 18.h,
          child: Text(
            'Book and\nschedule with\nnearest doctor',
            style: TextStyles.font18WhiteMedium.copyWith(height: 1.2.h),
            textAlign: TextAlign.start,
          ),
        ),
        Positioned(
            bottom: 15.h,
            left: 18.h,
            child: AppTextButton(
              buttonText: 'Find Nearby',
              textStyle: TextStyles.font12BlueRegular,
              onPressed: () {},
              backgroundColor: Colors.white,
              buttonHeight: 38,
              buttonWidth: 109,
              horizontalPadding: 18,
              verticalPadding: 10,
<<<<<<< Updated upstream
=======

           
>>>>>>> Stashed changes
            ))
      ],
    );
  }
}
