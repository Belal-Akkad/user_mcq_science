import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/functions/get_screen_width.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/timer_box_items.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/empty_timer_box.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/animation_timer_line.dart';

class TimerBox extends StatelessWidget {
  const TimerBox({
    super.key,
    required this.currentValue,
  });

  final double currentValue;

  @override
  Widget build(BuildContext context) {
    return EmptyTimerBox(
      child: Stack(
        children: [
          AnimationTimerLine(
            width: (getScreenWidth(context) - getResponsiveSize(context, 67)) *
                currentValue,
          ),
          const TimerBoxItems()
        ],
      ),
    );
  }
}
