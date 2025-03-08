import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/core/constants/app_duration.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/absorption_cubit/absorption_state.dart';

class AbsorptionCubit extends Cubit<AbsorptionState> {
  AbsorptionCubit() : super(AbsorptioninitialState());

  Timer? _timer;
  Future<void> stopQuizabsorption() async {
    _timer = Timer(
      AppDuration.stopQuizbsorption,
      () {
        emit(StopAbsorptionState());
      },
    );
  }

  @override
  Future<void> close() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
    return super.close();
  }
}
