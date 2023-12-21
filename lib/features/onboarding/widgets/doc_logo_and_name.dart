import 'package:doctor_appointment/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/logo.svg'),
        SizedBox(width: 10.w),
        Text(
          'Doctor Appoinment',
          style: TextStyles.font24Black700Weigth,
        ),
      ],
    );
  }
}
