import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:user_quiz_app/core/widgets/custom_modal_progress_hug.dart';
import 'package:user_quiz_app/features/auth/presentation/views/widgets/register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({
    super.key,
    required this.inAsyncCall,
    required this.isAbsorbing,
  });
  final bool inAsyncCall;
  final bool isAbsorbing;

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
              CustomAuthAppBar(text: 'إنشاء حساب'),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
