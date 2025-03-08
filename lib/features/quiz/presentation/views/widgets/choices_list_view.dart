import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/choice_cubit/choices_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/choice_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/choice_item.dart';

class ChoicListView extends StatelessWidget {
  const ChoicListView({
    super.key,
    required this.questionModel,
    required this.selectedAnswerIndex,
  });

  final QuestionModel questionModel;
  final int? selectedAnswerIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: questionModel.choices.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.read<ChoicesCubit>().selectAnswer(
                index: index, correctAnswer: questionModel.correctAnswer);
          },
          child: ChoiceItem(
            choiceModel: ChoiceModel(
              choice: questionModel.choices[index],
              choiceNumber: index + 1,
              isSelected: selectedAnswerIndex == index,
            ),
          ),
        );
      },
    );
  }
}
