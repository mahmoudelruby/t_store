import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_func.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,required this.dividerText
  });
final String dividerText;


  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: darkMode ? TColors.darkerGrey : TColors.grey,
              thickness: .5,
              indent: 60,
              endIndent: 5,
            )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
              color: darkMode ? TColors.darkerGrey : TColors.grey,
              thickness: .5,
              indent: 5,
              endIndent: 60),
        )
      ],
    );
  }
}