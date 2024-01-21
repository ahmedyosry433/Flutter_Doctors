import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import 'package:flutter/material.dart';

class PassWordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLendth;
  const PassWordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLendth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        builValidationRow('At least 1 lawercase letter', hasLowerCase),
        verticalSpace(2),
        builValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        builValidationRow('At least 1 special character', hasSpecialCharacters),
        verticalSpace(2),
        builValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        builValidationRow('At least 8 character long', hasMinLendth),
        verticalSpace(2),
      ],
    );
  }

  Widget builValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            color: hasValidated ? Colors.green : ColorsManager.darkBlue,
          ),
        )
      ],
    );
  }
}
