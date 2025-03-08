import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/auth/presentation/views/register_view.dart';

class RegisterNavigationLink extends StatelessWidget {
  const RegisterNavigationLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'إذا لم يكن لديك حساب ',
          style: AppStyles.boldTextStyle14(context),
        ),
        GestureDetector(
          onTap: () => Get.to(() => const RegisterView()),
          child: Text(
            'اضغط لإنشاء حساب',
            style: AppStyles.boldTextStyle14(context).copyWith(
              color: AppColor.kTurquoiseColor,
            ),
          ),
        )
      ],
    );
  }
}
