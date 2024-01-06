import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/features/signup/ui/widget/already_have_account_text.dart';
import 'package:doctor_appointment/features/signup/ui/widget/sign_up_bloc_listener.dart';
import 'package:doctor_appointment/features/signup/ui/widget/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/style.dart';
import '../../../core/widgets/app_text_button.dart';
import '../logic/sgin_up_cubit.dart';
import 'widget/sign_up_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                startText(),
                verticalSpace(10),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(10),
                    AppTextButton(
                        buttonText: 'Create Account',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () => validateThenDoSignup(context)),
                    verticalSpace(15),
                    const AlreadyHaveAccountText(),
                    verticalSpace(20),
                    const TermsAndConditions(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignUpStates();
    }
  }

  Widget startText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: TextStyles.font24BlueBold,
        ),
        verticalSpace(8),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: TextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}
