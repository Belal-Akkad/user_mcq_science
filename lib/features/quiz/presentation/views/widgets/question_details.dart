import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/timer_box_builder.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_and_choices.dart';

class QuestionDetails extends StatelessWidget {
  const QuestionDetails({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TimerBoxBuilder(),
          SizedBox(height: getResponsiveSize(context, 20)),
          QuestionAndChoices(questionModel: questionModel),
        ],
      ),
    );
  }
}
