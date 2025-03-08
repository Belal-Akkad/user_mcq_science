import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/core/widgets/primary_action_button.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/quiz_view.dart';

class ResultActions extends StatelessWidget {
  const ResultActions({
    super.key,
    required this.questions,
  });
  final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PrimaryActionButton(
            text: 'الرجوع',
            onTap: () {
              Get.back();
            },
          ),
        ),
        SizedBox(
          width: getResponsiveSize(context, 20),
        ),
        Expanded(
          child: PrimaryActionButton(
            text: 'إعادة الاختبار',
            onTap: () {
              Get.off(() => QuizView(questionsList: questions));
            },
          ),
        ),
      ],
    );
  }
}
