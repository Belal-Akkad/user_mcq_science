import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class CustomResultAppBar extends StatelessWidget {
  const CustomResultAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'صفحة النتيجة',
          style: AppStyles.noramalTextStyle22(context),
        ),
      ],
    );
  }
}
