import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.loginScreen),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account ? ',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: 'Log in',
              style: TextStyles.font13BlueSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
