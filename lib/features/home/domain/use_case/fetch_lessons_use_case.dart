import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/core/models/section_model.dart';
import 'package:user_quiz_app/features/home/domain/repo/home_repo.dart';

class FetchLessonsUseCase {
  FetchLessonsUseCase({
    required this.homeRepo,
  });

  final HomeRepo homeRepo;

  Future<Either<ServerFailures, Map<String, dynamic>>> execute(
      {required List<SectionModel> sections}) async {
    return await homeRepo.fetchlessons(sections: sections);
  }
}
