import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_color.dart';
import 'package:user_quiz_app/core/functions/get_responsive_size.dart';
import 'package:user_quiz_app/core/utilities/app_styles.dart';
import 'package:user_quiz_app/features/quiz/presentation/views/view_model/choice_model.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem({
    super.key,
    required this.choiceModel,
  });
  final ChoiceModel choiceModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getResponsiveSize(context, 10),
      ),
      child: Container(
        height: getResponsiveSize(context, 50),
        padding:
            EdgeInsets.symmetric(horizontal: getResponsiveSize(context, 16)),
        decoration: BoxDecoration(
          color: AppColor.kwhite10,
          borderRadius: BorderRadius.circular(getResponsiveSize(context, 15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${choiceModel.choiceNumber} : ${choiceModel.choice}',
              style: AppStyles.mediumTextStyle18(context),
            ),
            getIcon(choiceModel.isSelected, context)
          ],
        ),
      ),
    );
  }

  getIcon(bool isSelected, BuildContext context) {
    if (isSelected) {
      return CircleAvatar(
        radius: getResponsiveSize(context, 12),
        backgroundColor: AppColor.kTurquoiseColor,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: getResponsiveSize(context, 20),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
