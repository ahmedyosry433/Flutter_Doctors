import 'package:doctor_appointment/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weigth = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font13GrayRegular = TextStyle(
    color: ColorsManager.gray,
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font16White500Weigth = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
  );
}
