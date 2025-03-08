import 'package:get_it/get_it.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_quiz_app/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:user_quiz_app/features/auth/data/repo_impl/auth_repo_impl.dart';
import 'package:user_quiz_app/features/auth/domain/repo/auth_repo.dart';
import 'package:user_quiz_app/features/auth/domain/use_case/login_use_case.dart';
import 'package:user_quiz_app/features/auth/domain/use_case/sign_up_use_case.dart';
import 'package:user_quiz_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:user_quiz_app/features/home/data/repo_impl/home_repo_impl.dart';
import 'package:user_quiz_app/features/home/domain/repo/home_repo.dart';
import 'package:user_quiz_app/features/home/domain/use_case/fetch_lessons_use_case.dart';
import 'package:user_quiz_app/features/home/domain/use_case/fetch_questions_use_case.dart';
import 'package:user_quiz_app/features/home/domain/use_case/fetch_sections_use_case.dart';
import 'package:user_quiz_app/features/home/domain/use_case/sign_out_use_case.dart';

final getIt = GetIt.instance;

void setupServerLocator() {
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  getIt.registerSingleton<HomeRemoteDataSource>(
      HomeRemoteDataSource(supabaseClient: getIt.get<SupabaseClient>()));

  getIt.registerSingleton<HomeRepo>(
      HomeRepoImpl(remoteDataSource: getIt.get<HomeRemoteDataSource>()));

  getIt.registerSingleton<FetchSectionsUseCase>(
      FetchSectionsUseCase(homeRepo: getIt.get<HomeRepo>()));

  getIt.registerSingleton<FetchLessonsUseCase>(
      FetchLessonsUseCase(homeRepo: getIt.get<HomeRepo>()));

  getIt.registerSingleton<FetchQuestionsUseCase>(
      FetchQuestionsUseCase(homeRepo: getIt.get<HomeRepo>()));

  getIt.registerSingleton<AuthRemoteDataSource>(
      AuthRemoteDataSource(supabaseClient: getIt.get<SupabaseClient>()));

  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(authRemoteDataSource: getIt.get<AuthRemoteDataSource>()));

  getIt.registerSingleton<SignUpUseCase>(
      SignUpUseCase(authRepo: getIt.get<AuthRepo>()));

  getIt.registerSingleton<LoginUseCase>(
      LoginUseCase(authRepo: getIt.get<AuthRepo>()));

  getIt.registerSingleton<SignOutUseCase>(
      SignOutUseCase(homeRepo: getIt.get<HomeRepo>()));
}
