import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/core/models/question_model.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/absorption_cubit/absorption_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/animation_timer_cubit/animation_timer_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/choice_cubit/choices_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/question_cubit/question_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/quiz_view_body_builder.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key, required this.questionsList});
  final List<QuestionModel> questionsList;

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AbsorptionCubit(),
        ),
        BlocProvider(
          create: (context) => AnimationTimerCubit(
              vsync: this,
              duration: AppDuration.fillTimerBoxAndNextQuestionDuration),
        ),
        BlocProvider(
          create: (context) => ChoicesCubit(),
        ),
        BlocProvider(
          create: (context) => QuestionCubit(
            choicesCubit: BlocProvider.of<ChoicesCubit>(context),
            questions: widget.questionsList,
            animationCubit: BlocProvider.of<AnimationTimerCubit>(context),
          ),
        ),
      ],
      child: const SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ScreenBackgroundImage(
            screen: PopScope(canPop: false, child: QuizViewBodyBuilder()),
          ),
        ),
      ),
    );
  }
}
