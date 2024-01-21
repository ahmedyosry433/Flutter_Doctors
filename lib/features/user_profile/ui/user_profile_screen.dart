import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../../../core/widgets/app_text_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/style.dart';
import '../logic/cubit/user_profile_cubit.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fill Your Profile', style: TextStyles.font24BlueBold),
            verticalSpace(8),
            Text(
              'Please take a few minutes to fill out your profile \nwith as much detail as possible.',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(36),
            fullNameAndEmailAndPhone(context),
            verticalSpace(36),
            AppTextButton(
                buttonText: 'Submit',
                textStyle: TextStyles.font16WhiteSemiBold,
                onPressed: () {})
          ],
        ),
      )),
    );
  }

  Widget fullNameAndEmailAndPhone(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Full Name',
          validator: (value) {},
          controller: context.read<UserProfileCubit>().fullNameController,
        ),
        verticalSpace(16),
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {},
          controller: context.read<UserProfileCubit>().emailController,
        ),
        verticalSpace(16),
        AppTextPhoneField(
          hintText: 'Your Number',
          controller: context.read<UserProfileCubit>().phoneController,
        )
      ],
    );
  }
}
