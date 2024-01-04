import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class TopTextAndNotificationButton extends StatelessWidget {
  const TopTextAndNotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Ahmed!',
                style: TextStyles.font18BlackBold.copyWith(height: 1.5.h),
              ),
              Text(
                'How Are You Today?',
                style: TextStyles.font11GrayRegular,
              ),
            ],
          ),
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager
                  .lighterGray, // Set your desired background color
            ),
            child: IconButton(
              iconSize: 24,
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
