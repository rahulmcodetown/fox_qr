import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';
import 'package:flutter/material.dart';

class AppRatingPill extends StatelessWidget {
  final double rating;
  final int width;
  final int height;
  const AppRatingPill(
    this.rating, {
    super.key,
    this.height = 32,
    this.width = 48,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.r),
        color: AppColors.successColor,
      ),
      child: Center(
        child: Text(
          '★ $rating',
          style: AppText.text12w400,
        ),
      ),
    );
  }
}
