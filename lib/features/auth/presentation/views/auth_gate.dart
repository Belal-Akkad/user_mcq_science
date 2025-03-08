import 'package:flutter/material.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_quiz_app/features/auth/presentation/views/login_view.dart';
import 'package:user_quiz_app/features/home/presentation/views/home_view.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        final authState = snapshot.data;
        final session = authState?.session;

        if (session != null) {
          return const HomeView();
        } else {
          return const LoginView();
        }
      },
    );
  }
}
