import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class LoginRedirect extends StatelessWidget {
  const LoginRedirect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'إذا كان لديك حساب ',
          style: AppStyles.boldTextStyle14(context),
        ),
        GestureDetector(
          onTap: () {
            Get.back();
            FocusScope.of(context).unfocus();
          },
          child: Text(
            'اضغط لتسجيل الدخول',
            style: AppStyles.boldTextStyle14(context).copyWith(
              color: AppColor.kTurquoiseColor,
            ),
          ),
        )
      ],
    );
  }
}
