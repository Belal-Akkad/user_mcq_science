import 'package:flutter/material.dart';
import 'package:user_quiz_app/core/constants/app_asset.dart';

class ScreenBackgroundImage extends StatelessWidget {
  const ScreenBackgroundImage({
    super.key,
    required this.screen,
  });
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAsset.kBackgroundImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: screen,
    );
  }
}
