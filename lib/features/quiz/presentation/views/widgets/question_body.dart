import 'package:flutter/material.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/question_page_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_details.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_header.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({
    super.key,
    required this.questionPageModel,
  });

  final QuestionPageModel questionPageModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionHeader(
          numberOfQuestions: questionPageModel.numberOfQuestions,
          currentQuestion: questionPageModel.currentQuestion,
        ),
        Expanded(
          child: QuestionDetails(
            questionModel: questionPageModel.questionModel,
          ),
        ),
      ],
    );
  }
}
