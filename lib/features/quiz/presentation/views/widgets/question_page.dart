import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/question_page_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/start_counter.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/custom_question_app_bar.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_action.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_body.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({
    super.key,
    required this.questionPageModel,
    required this.absorbing,
  });

  final QuestionPageModel questionPageModel;
  final bool absorbing;
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: absorbing,
      child: Padding(
        padding: EdgeInsets.all(getResponsiveSize(context, 12)),
        child: Stack(
          children: [
            Column(
              children: [
                const CustomQuestionAppBar(),
                SizedBox(height: getResponsiveSize(context, 40)),
                Expanded(
                    child: QuestionBody(questionPageModel: questionPageModel)),
                const QuestionActions(),
              ],
            ),
            const StartCounter(),
          ],
        ),
      ),
    );
  }
}
