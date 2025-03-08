import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';

abstract class AuthRepo {
  Future<Either<ServerFailures, void>> loginInWithEmailAndPassword(
      {required String password, required String email});
  Future<Either<ServerFailures, void>> signUpWithEmailAndPassword({
    required String password,
    required String email,
  });
  Future<Either<ServerFailures, void>> insertDataToUsersTable({
    required String password,
    required String email,
  });
}
