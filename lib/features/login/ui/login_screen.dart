import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/core/theming/style.dart';
import 'package:doctor_appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_button.dart';
import 'widget/dont_have_account_text.dart';
import 'widget/email_and_password.dart';
import 'widget/login_bloc_lisener.dart';
import 'widget/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Forgot Password?',
                            style: TextStyles.font13BlueRegular),
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpace(16),
                    const TermsAndConditions(),
                    verticalSpace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
