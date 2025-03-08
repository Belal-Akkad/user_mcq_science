import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/functions/get_screen_width.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/dialog_content.dart';

Future<dynamic> customShowDialog<cubitType extends Cubit>({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      final BorderRadiusGeometry borderRadius = BorderRadius.circular(
        getResponsiveSize(context, 22),
      );
      final double width = getScreenWidth(context) * 0.6;
      final EdgeInsetsGeometry padding =
          EdgeInsets.symmetric(vertical: getResponsiveSize(context, 30));
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        backgroundColor: AppColor.kMidnightBlue,
        child: Container(
          width: width,
          padding: padding,
          child: DialogContent(),
        ),
      );
    },
  );
}
