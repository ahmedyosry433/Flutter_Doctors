import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment/core/widgets/app_text_phone_field.dart';
import 'package:doctor_appointment/features/login/ui/widget/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/app_regex.dart';
import '../../logic/sgin_up_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);

        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignupCubit>().nameController,
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
          ),
          verticalSpace(8),
          AppTextFormField(
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please Enter A Valid Email';
              }
            },
          ),
          verticalSpace(8),
          AppTextFormField(
              controller: context.read<SignupCubit>().passwordController,
              isObscureText: isPasswordObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isPasswordObscureText = !isPasswordObscureText;
                    },
                  );
                },
                child: Icon(isPasswordObscureText
                    ? Icons.visibility_off
                    : Icons.visibility),
              ),
              hintText: 'Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter A Vaild Password';
                }
              }),
          verticalSpace(8),
          AppTextFormField(
              controller:
                  context.read<SignupCubit>().passwordConfirmationController,
              isObscureText: isPasswordConfirmationObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isPasswordConfirmationObscureText =
                          !isPasswordConfirmationObscureText;
                    },
                  );
                },
                child: Icon(isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility),
              ),
              hintText: 'Password Confirmation',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    value !=
                        context.read<SignupCubit>().passwordController.text) {
                  return 'Password Not match';
                }
              }),
          verticalSpace(8),
          AppTextPhoneField(
              controller: context.read<SignupCubit>().phoneController,
              hintText: 'Your Phone'),
          PassWordValidation(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLendth: hasMinLength)
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}
