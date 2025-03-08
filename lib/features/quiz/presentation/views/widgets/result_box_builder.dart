import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_quiz_app/features/quiz/presentation/manager/animation_result_cubit/animation_result_cubit.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/widgets/result_box.dart';

class ResultBoxBuilder extends StatefulWidget {
  const ResultBoxBuilder({
    super.key,
    required this.rate,
  });
  final double rate;
  @override
  State<ResultBoxBuilder> createState() => _ResultBoxBuilderState();
}

class _ResultBoxBuilderState extends State<ResultBoxBuilder> {
  late double rate;
  @override
  void initState() {
    rate = widget.rate;
    BlocProvider.of<AnimationResultCubit>(context).startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimationResultCubit, double>(
      builder: (context, state) {
        return ResultBox(rate: rate, currentValue: state);
      },
    );
  }
}
