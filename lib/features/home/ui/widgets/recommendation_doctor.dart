import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/style.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.h,
      child: Column(
        children: [
          verticalSpace(23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recommendation Doctor',
                  style: TextStyles.font18BlackSemiBold),
              Text('See All', style: TextStyles.font12BlueRegular)
            ],
          ),
          verticalSpace(20),
          SizedBox(
            height: 150.w,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Row(
                children: [
                  Image.asset(
                    'assets/images/recommendation_doctor_card_image.png',
                    width: 110.w,
                    height: 110.h,
                  ),
                  horizontalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Randy Wigham',
                        style: TextStyles.font16BlackBold,
                      ),
                      Text('General | RSUD Gatot Subroto',
                          style: TextStyles.font12GrayRegular
                              .copyWith(height: 1.7.h)),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow,
                          ),
                          Text(
                            '4.8 (4.279 reviews)',
                            style: TextStyles.font12GrayRegular
                                .copyWith(height: 1.7.h),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
