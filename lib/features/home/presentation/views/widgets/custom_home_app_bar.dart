import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/custom_home_app_bar_action.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'الصفحة الرئيسية',
          style: AppStyles.noramalTextStyle22(context),
        ),
        const CustomHomeAppBarAction(),
      ],
    );
  }
}
