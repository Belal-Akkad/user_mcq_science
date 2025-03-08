import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/widgets/custom_icon_button.dart';
import 'package:user_quiz_app/core/widgets/custom_shimmer_text.dart';

class NoQuestionsPage extends StatelessWidget {
  const NoQuestionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomIconButton(
            onTap: () {
              Get.back();
            },
            iconData: Icons.close,
          ),
          const Spacer(),
          const Center(
            child: CustomShimmerText(text: 'لم يتم إضافة أي سؤال بعد'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
