import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/home/presentation/views/widgets/error_view_body.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScreenBackgroundImage(
          screen: ErrorViewBody(errMessage: errMessage),
        ),
      ),
    );
  }
}
