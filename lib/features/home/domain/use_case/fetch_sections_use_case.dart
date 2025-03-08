import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/core/models/section_model.dart';
import 'package:user_quiz_app/features/home/domain/repo/home_repo.dart';

class FetchSectionsUseCase {
  FetchSectionsUseCase({required this.homeRepo});
  final HomeRepo homeRepo;

  Future<Either<ServerFailures, List<SectionModel>>> execute() async {
    return await homeRepo.fetchSections();
  }
}
