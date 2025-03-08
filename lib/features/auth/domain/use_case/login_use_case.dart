import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/features/auth/domain/repo/auth_repo.dart';

class LoginUseCase {
  LoginUseCase({required this.authRepo});
  final AuthRepo authRepo;
  Future<Either<ServerFailures, void>> execute(
      {required String password, required String email}) async {
    return await authRepo.loginInWithEmailAndPassword(
        email: email, password: password);
  }
}
