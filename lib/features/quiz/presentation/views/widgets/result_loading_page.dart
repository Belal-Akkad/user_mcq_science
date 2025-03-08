import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class ResultLoadingPage extends StatelessWidget {
  const ResultLoadingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'جاري تحميل النتيجة ...',
          style: AppStyles.boldTextStayle20(context),
        ),
        SizedBox(
          height: getResponsiveSize(context, 20),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getResponsiveSize(context, 20)),
            child: const LinearProgressIndicator(
              color: AppColor.kTurquoiseColor,
            ),
          ),
        ),
      ],
    );
  }
}
