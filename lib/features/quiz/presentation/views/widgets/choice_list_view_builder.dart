import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/choice_cubit/choices_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/choices_list_view.dart';

class ChoicesListViewBuilder extends StatelessWidget {
  const ChoicesListViewBuilder({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChoicesCubit, int?>(
      builder: (context, selectedAnswerIndex) {
        return ChoicListView(
          questionModel: questionModel,
          selectedAnswerIndex: selectedAnswerIndex,
        );
      },
    );
  }
}
