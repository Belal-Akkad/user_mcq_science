import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/dialog_button_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/dialog_button.dart';

class DialogActions extends StatelessWidget {
  const DialogActions({
    super.key,
    required this.onButtonPressed,
  });
  final void Function() onButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DialogButton(
          dialogButtonModel: DialogButtonModel(
            onButtonPressed: () {
              Get.close(2);
            },
            buttonText: 'نعم',
          ),
        ),
        SizedBox(width: getResponsiveSize(context, 15)),
        DialogButton(
          dialogButtonModel: DialogButtonModel(
            onButtonPressed: () {
              Get.back();
            },
            buttonText: ' لا ',
          ),
        ),
      ],
    );
  }
}
