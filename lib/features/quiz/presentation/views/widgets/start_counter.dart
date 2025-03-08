import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';

class StartCounter extends StatelessWidget {
  const StartCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style: AppStyles.boldTextStyle70(context),
        child: AnimatedTextKit(
          pause: AppDuration.startCounterDuration,
          totalRepeatCount: 1,
          animatedTexts: [
            ScaleAnimatedText('3'),
            ScaleAnimatedText('2'),
            ScaleAnimatedText('1'),
          ],
        ),
      ),
    );
  }
}
