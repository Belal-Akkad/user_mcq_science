import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/functions/setup_server_locator.dart';
import 'package:user_quiz_app/core/widgets/screen_background_image.dart';
import 'package:user_quiz_app/features/auth/domain/use_case/login_use_case.dart';
import 'package:user_quiz_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:user_quiz_app/features/auth/presentation/views/widgets/login_view_body_builder.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(signInUseCase: getIt.get<LoginUseCase>()),
      child: const SafeArea(
        child: Scaffold(
          body: ScreenBackgroundImage(screen: LoginViewBodyBuilder()),
        ),
      ),
    );
  }
}
