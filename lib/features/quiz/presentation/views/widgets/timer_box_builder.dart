import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/animation_timer_cubit/animation_timer_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/timer_box.dart';

class TimerBoxBuilder extends StatelessWidget {
  const TimerBoxBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimationTimerCubit, double>(
      builder: (context, currentValue) {
        return TimerBox(currentValue: currentValue);
      },
    );
  }
}
