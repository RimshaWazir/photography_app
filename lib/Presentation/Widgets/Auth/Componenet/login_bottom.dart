import 'package:flutter/material.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class LoginBottomText extends StatelessWidget {
  const LoginBottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Styles.circularStd(context,
            color: AppColors.blackColor, fontSize: 16),
        children: [
          const TextSpan(
            text: AppStrings.vendor,
          ),
          TextSpan(
            text: AppStrings.businessSignIn,
            style: Styles.circularStd(
              context,
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
