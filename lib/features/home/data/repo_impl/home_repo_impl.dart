import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_quiz_app/core/errors/server_failures.dart';
import 'package:user_quiz_app/core/models/section_model.dart';
import 'package:user_quiz_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:user_quiz_app/features/home/domain/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl({required this.remoteDataSource});
  final HomeRemoteDataSource remoteDataSource;

  @override
  Future<Either<ServerFailures, List<SectionModel>>> fetchSections() async {
    try {
      List<SectionModel> sections = await remoteDataSource.fetchSections();

      return right(sections);
    } on PostgrestException catch (error) {
      return left(ServerPostgrestFailures.fromPostgrestException(error));
    } on SocketException catch (error) {
      return left(ServerSocketFailures.fromSocketFailures(error));
    } catch (error) {
      return left(ServerFailures(errMessage: 'حدث خطأ، يرجى المحاولة لاحقًا'));
    }
  }

  @override
  Future<Either<ServerFailures, Map<String, dynamic>>> fetchlessons(
      {required List<SectionModel> sections}) async {
    try {
      Map<String, dynamic> lessonsMap =
          await remoteDataSource.fetchlessions(sections: sections);

      return right(lessonsMap);
    } on PostgrestException catch (error) {
      return left(ServerPostgrestFailures.fromPostgrestException(error));
    } on SocketException catch (error) {
      return left(ServerSocketFailures.fromSocketFailures(error));
    } catch (error) {
      return left(ServerFailures(errMessage: 'حدث خطأ، يرجى المحاولة لاحقًا'));
    }
  }

  @override
  Future<Either<ServerFailures, Map<String, dynamic>>> fetchQuestions(
      {required Map<String, dynamic> lessonsMap}) async {
    try {
      Map<String, dynamic> questionsMap =
          await remoteDataSource.fetchQuestions(lessonsMap);

      return right(questionsMap);
    } on PostgrestException catch (error) {
      return left(ServerPostgrestFailures.fromPostgrestException(error));
    } on SocketException catch (error) {
      return left(ServerSocketFailures.fromSocketFailures(error));
    } catch (error) {
      return left(ServerFailures(errMessage: 'حدث خطأ، يرجى المحاولة لاحقًا'));
    }
  }

  @override
  Future<Either<ServerFailures, void>> signOut() async {
    try {
      await remoteDataSource.singOut();

      return right(null);
    } on AuthException catch (error) {
      return left(ServerAuthFailures.formAuthException(error));
    } on SocketException catch (error) {
      return left(ServerSocketFailures.fromSocketFailures(error));
    } catch (error) {
      return left(ServerFailures(errMessage: 'حدث خطأ، يرجى المحاولة لاحقًا'));
    }
  }
}
