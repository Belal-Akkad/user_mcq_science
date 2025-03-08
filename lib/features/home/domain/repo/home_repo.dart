import 'package:dartz/dartz.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/core/models/section_model.dart';

abstract class HomeRepo {
  Future<Either<ServerFailures, List<SectionModel>>> fetchSections();

  Future<Either<ServerFailures, Map<String, dynamic>>> fetchlessons(
      {required List<SectionModel> sections});

  Future<Either<ServerFailures, Map<String, dynamic>>> fetchQuestions(
      {required Map<String, dynamic> lessonsMap});

  Future<Either<ServerFailures, void>> signOut();
}
