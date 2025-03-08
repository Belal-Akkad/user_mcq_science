import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/features/home/domain/repo/home_repo.dart';

class FetchQuestionsUseCase {
  FetchQuestionsUseCase({required this.homeRepo});
  final HomeRepo homeRepo;

  Future<Either<ServerFailures, Map<String, dynamic>>> execute(
      {required Map<String, dynamic> lessonsMap}) async {
    return await homeRepo.fetchQuestions(lessonsMap: lessonsMap);
  }
}
