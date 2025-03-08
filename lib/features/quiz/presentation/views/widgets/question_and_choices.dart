import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/functions/get_screen_height.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/choice_list_view_builder.dart';

class QuestionAndChoices extends StatelessWidget {
  const QuestionAndChoices({
    super.key,
    required this.questionModel,
  });

  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context) * 0.45,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionModel.questionText,
              style: AppStyles.noramalTextStyle22(context),
            ),
            SizedBox(height: getResponsiveSize(context, 10)),
            ChoicesListViewBuilder(
              questionModel: questionModel,
            ),
          ],
        ),
      ),
    );
  }
}
