import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/features/home/domain/repo/home_repo.dart';

class SignOutUseCase {
  final HomeRepo homeRepo;

  SignOutUseCase({required this.homeRepo});

  Future<Either<ServerFailures, void>> execute() async {
    return await homeRepo.signOut();
  }
}
