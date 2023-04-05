import 'package:fox/shared/shared.dart';
import 'package:flutter/material.dart';

class AppPill extends StatelessWidget {
  const AppPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 4.h,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white.withOpacity(0.3),
        ),
      ),
    );
  }
}
