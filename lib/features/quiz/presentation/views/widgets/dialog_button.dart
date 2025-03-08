import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/dialog_button_model.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
    super.key,
    required this.dialogButtonModel,
  });
  final DialogButtonModel dialogButtonModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColor.kTurquoiseColor,
      borderRadius: BorderRadius.circular(22),
      onTap: dialogButtonModel.onButtonPressed,
      child: Container(
        width: getResponsiveSize(context, 70),
        height: getResponsiveSize(context, 40),
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.kGrayColor,
            ),
            borderRadius:
                BorderRadius.circular(getResponsiveSize(context, 22))),
        child: Center(
          child: Text(dialogButtonModel.buttonText,
              style: AppStyles.boldTextStyle16(context)),
        ),
      ),
    );
  }
}
