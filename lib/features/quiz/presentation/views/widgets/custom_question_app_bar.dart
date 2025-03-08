import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/custom_show_dialog.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/core/widgets/custom_icon_button.dart';

class CustomQuestionAppBar extends StatelessWidget {
  const CustomQuestionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'إغلاق الاختبار',
          style: AppStyles.noramalTextStyle22(context),
        ),
        CustomIconButton(
          onTap: () {
            customShowDialog(
              context: context,
            );
          },
          iconData: Icons.close,
        )
      ],
    );
  }
}
