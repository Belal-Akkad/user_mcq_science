import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/absorption_cubit/absorption_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/absorption_cubit/absorption_state.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/question_page_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/question_page.dart';

class QuestionPageBuilder extends StatefulWidget {
  const QuestionPageBuilder({super.key, required this.questionPageModel});
  final QuestionPageModel questionPageModel;

  @override
  State<QuestionPageBuilder> createState() => _QuestionPageBuilderState();
}

class _QuestionPageBuilderState extends State<QuestionPageBuilder> {
  @override
  void initState() {
    BlocProvider.of<AbsorptionCubit>(context).stopQuizabsorption();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AbsorptionCubit, AbsorptionState>(
      builder: (context, state) {
        return QuestionPage(
          questionPageModel: widget.questionPageModel,
          absorbing: state is AbsorptioninitialState,
        );
      },
    );
  }
}
