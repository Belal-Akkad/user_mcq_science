import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/result_view_model.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary({
    super.key,
    required this.resultViewModel,
  });

  final ResultViewModel resultViewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'عدد الاسئلة : ${resultViewModel.questions.length}',
              style: AppStyles.noramalTextStyle18(context),
            ),
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'الأسئلة الصحيحة : ${resultViewModel.sumOfCorrectAnswers.toInt()}',
              style: AppStyles.noramalTextStyle18(context),
            ),
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'الأسئلة الخاطئة : ${(resultViewModel.questions.length - resultViewModel.sumOfCorrectAnswers).toInt()}',
              style: AppStyles.noramalTextStyle18(context),
            ),
          ),
        ),
      ],
    );
  }
}
