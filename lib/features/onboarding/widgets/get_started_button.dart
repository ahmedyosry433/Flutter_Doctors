import 'package:doctor_appointment/core/helper/extensions.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/style.dart';

class GetStatedButton extends StatelessWidget {
  const GetStatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () => context.pushNamed(Routes.loginScreen),
      child: Text(
        'Get Started',
        style: TextStyles.font16White500Weigth,
      ),
    );
  }
}
