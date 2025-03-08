import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/animation_result_cubit/animation_result_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/result_view_model.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_view_body.dart';

class ResultView extends StatefulWidget {
  const ResultView({
    super.key,
    required this.resultViewModel,
  });
  final ResultViewModel resultViewModel;

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimationResultCubit(
        vsync: this,
        duration: AppDuration.fillResultBoxDuration,
        endLine: widget.resultViewModel.rate / 100,
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ScreenBackgroundImage(
            screen: ResultViewBody(
              resultViewModel: widget.resultViewModel,
            ),
          ),
        ),
      ),
    );
  }
}
