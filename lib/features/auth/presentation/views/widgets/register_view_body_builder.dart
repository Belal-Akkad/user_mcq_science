import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:user_quiz_app/features/auth/presentation/manager/register_cubit/register_state.dart';
import 'package:user_quiz_app/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterViewBodyBuilder extends StatelessWidget {
  const RegisterViewBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterFailuerState) {
          Get.snackbar('فشلت العملية', state.errMessage,
              duration: AppDuration.snackbarDuration);
        } else if (state is RegisterSuccessState) {
          Get.back();
        }
      },
      builder: (context, state) {
        return RegisterViewBody(
          inAsyncCall: state is RegisterLoadingState,
          isAbsorbing: state is RegisterFailuerState,
        );
      },
    );
  }
}
