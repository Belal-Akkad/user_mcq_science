import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:user_quiz_app/core/widgets/custom_modal_progress_hug.dart';
import 'package:user_quiz_app/features/auth/presentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody(
      {super.key, required this.isAbsorbing, required this.inAsyncCall});
  final bool isAbsorbing;
  final bool inAsyncCall;

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = EdgeInsets.all(getResponsiveSize(context, 22));
    return CustomModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: AbsorbPointer(
        absorbing: isAbsorbing,
        child: Padding(
          padding: padding,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAuthAppBar(text: 'تسجيل الدخول'),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
