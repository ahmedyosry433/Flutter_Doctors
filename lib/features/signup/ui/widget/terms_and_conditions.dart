import 'package:flutter/material.dart';

import '../../../../core/theming/style.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: 'And ',
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'PrivacyPolicy. ',
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
