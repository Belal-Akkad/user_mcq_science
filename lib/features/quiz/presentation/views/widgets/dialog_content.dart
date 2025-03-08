import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/dialog_actions.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'هل أنت متأكد من الخروج الأختبار ؟',
          style: AppStyles.boldTextStyle16(context),
        ),
        SizedBox(
          height: getResponsiveSize(context, 24),
        ),
        DialogActions(
          onButtonPressed: () {},
        )
      ],
    );
  }
}