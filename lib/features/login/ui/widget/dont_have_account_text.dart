import 'package:doctor_appointment/core/helper/extensions.dart';
import 'package:doctor_appointment/core/theming/style.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.signupScreen),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'don\'t have an account yet? ',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyles.font13BlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
