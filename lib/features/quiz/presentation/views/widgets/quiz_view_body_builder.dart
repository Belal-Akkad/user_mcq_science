import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/question_cubit/question_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/question_cubit/question_state.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_page_builder.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_loading_page.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/no_questions_page.dart';

class QuizViewBodyBuilder extends StatefulWidget {
  const QuizViewBodyBuilder({super.key});

  @override
  State<QuizViewBodyBuilder> createState() => _QuizViewBodyBuilderState();
}

class _QuizViewBodyBuilderState extends State<QuizViewBodyBuilder> {
  @override
  void initState() {
    if (BlocProvider.of<QuestionCubit>(context).questions.isNotEmpty) {
      BlocProvider.of<QuestionCubit>(context).nextQuestion();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionCubit, QuestionState>(
      builder: (context, state) {
        if (state is NextQuestionsState) {
          return QuestionPageBuilder(
              questionPageModel: state.questionPageModel);
        } else if (state is FinishedQuestionsState) {
          return const ResultLoadingPage();
        } else {
          return const NoQuestionsPage();
        }
      },
    );
  }
}
