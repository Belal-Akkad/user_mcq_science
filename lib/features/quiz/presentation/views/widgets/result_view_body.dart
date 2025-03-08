import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/result_view_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/custom_result_app_bar.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_actions.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_details.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({
    super.key,
    required this.resultViewModel,
  });

  final ResultViewModel resultViewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 20)),
      child: Column(
        children: [
          const CustomResultAppBar(),
          SizedBox(height: getResponsiveSize(context, 40)),
          ResultDetails(resultViewModel: resultViewModel),
          SizedBox(height: getResponsiveSize(context, 20)),
          ResultActions(questions: resultViewModel.questions),
        ],
      ),
    );
  }
}
