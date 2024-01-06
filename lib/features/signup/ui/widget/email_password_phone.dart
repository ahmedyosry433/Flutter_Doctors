import 'package:doctor_appointment/core/helper/spacing.dart';
import 'package:doctor_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment/core/widgets/app_text_phone_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/app_regex.dart';

class EmailAndPasswordAndPhone extends StatefulWidget {
  const EmailAndPasswordAndPhone({super.key});

  @override
  State<EmailAndPasswordAndPhone> createState() =>
      _EmailAndPasswordAndPhoneState();
}

class _EmailAndPasswordAndPhoneState extends State<EmailAndPasswordAndPhone> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Please Enter A Valid Email';
            }
          },
        ),
        verticalSpace(16),
        AppTextFormField(
            isObscureText: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(
                  () {
                    isObscure = !isObscure;
                  },
                );
              },
              child: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter A Vaild Password';
              }
            }),
        verticalSpace(16),
        const AppTextPhoneField(hintText: 'Your Phone'),
      ],
    );
  }
}
