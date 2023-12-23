import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';
import 'widget/already_have_account_text.dart';
import 'widget/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool isObscureText = true;
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
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Email',
                        ),
                        verticalSpace(8),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
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
                          onPressed: () {},
                          buttonText: 'Login',
                          textStyle: TextStyles.font16WhiteSemiBold,
                        ),
                        verticalSpace(16),
                        const TermsAndConditions(),
                        verticalSpace(60),
                        const AlreadyHaveAccountText(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
