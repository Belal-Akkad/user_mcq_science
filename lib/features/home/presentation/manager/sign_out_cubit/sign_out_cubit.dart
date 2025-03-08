import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/features/home/domain/use_case/sign_out_use_case.dart';
import 'package:user_quiz_app/features/home/presentation/manager/sign_out_cubit/sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  SignOutCubit({required this.signOutUseCase}) : super(SignOutInitialState());
  final SignOutUseCase signOutUseCase;

  void signOut() async {
    emit(SignOutLoadingState());
    var result = await signOutUseCase.execute();
    result.fold(
      (fail) {
        emit(SignOutFailState(errMessage: fail.errMessage));
      },
      (sucess) {
        emit(SignOutSuccessState());
      },
    );
  }
}
