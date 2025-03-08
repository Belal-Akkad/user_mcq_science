import 'package:flutter/material.dart';

double getResponsiveSize(BuildContext context, double size) {
  double width = MediaQuery.of(context).size.width;
  double scaleFactor = 0;
  if (width >= 800) {
    scaleFactor = width / 700;
  } else {
    scaleFactor = width / 500;
  }
  double responsiveSize = scaleFactor * size;

  return responsiveSize;
}
