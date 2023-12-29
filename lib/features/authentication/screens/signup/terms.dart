import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_func.dart';
class TermsAndConditional extends StatelessWidget {
  const TermsAndConditional({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: darkMode ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  darkMode ? TColors.white : TColors.primary)),
          TextSpan(
              text: 'and ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.termsOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: darkMode ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  darkMode ? TColors.white : TColors.primary)),
        ]))
      ],
    );
  }
}
