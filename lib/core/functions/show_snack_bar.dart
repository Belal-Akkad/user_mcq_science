import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

void showSnackBar(BuildContext context,
    {required String titleText, required String messageText}) {
  final double borderRadius = getResponsiveSize(context, 12);
  final double barBlur = getResponsiveSize(context, 5);
  final EdgeInsets padding = EdgeInsets.all(getResponsiveSize(context, 10));
  Get.snackbar(
    borderRadius: borderRadius,
    barBlur: barBlur,
    padding: padding,
    titleText,
    messageText,
    duration: AppDuration.snackbarDuration,
    titleText: Text(
      titleText,
      style: AppStyles.boldTextStyle22(context),
    ),
    messageText: Text(
      messageText,
      style: AppStyles.noramalTextStyle20(context),
    ),
  );
}
