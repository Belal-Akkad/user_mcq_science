import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/features/auth/domain/repo/auth_repo.dart';

class SignUpUseCase {
  SignUpUseCase({required this.authRepo});

  final AuthRepo authRepo;

  Future<Either<ServerFailures, void>> execute({
    required String password,
    required String email,
  }) async {
    Either<ServerFailures, void> insertResult =
        await authRepo.insertDataToUsersTable(
      password: password,
      email: email,
    );

    if (insertResult.isLeft()) {
      return insertResult;
    } else {
      return await authRepo.signUpWithEmailAndPassword(
        password: password,
        email: email,
      );
    }
  }
}
