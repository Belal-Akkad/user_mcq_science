import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/widgets/primary_action_button.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/question_cubit/question_cubit.dart';

class QuestionActions extends StatelessWidget {
  const QuestionActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryActionButton(
      text: 'تأكيد',
      onTap: () {
        BlocProvider.of<QuestionCubit>(context).nextQuestion();
      },
    );
  }
}
