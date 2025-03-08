import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationResultCubit extends Cubit<double> {
  late AnimationController _animationController;
  late Animation _animation;
  AnimationResultCubit(
      {required TickerProvider vsync,
      required Duration duration,
      required double endLine})
      : super(0) {
    _animationController =
        AnimationController(vsync: vsync, duration: duration);
    _animation =
        Tween<double>(begin: 0, end: endLine).animate(_animationController)
          ..addListener(
            () {
              emit(_animation.value);
            },
          );
  }
  void startAnimation() {
    _animationController.forward();
  }

  @override
  Future<void> close() {
    _animationController.dispose();

    return super.close();
  }
}
