import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackgroundImage(screen: SplashViewBody()),
    );
  }
}
