import 'package:flutter/material.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ScreenBackgroundImage(
          screen: Center(
            child: CustomLoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
