import 'package:flutter/material.dart';
import 'package:fox/shared/shared.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: AppEnvironment.navigator.pop,
      child: AppImage(
        Images.arrowBackBlackFilled,
        height: 50.r,
        width: 50.r,
      ),
    );
  }
}
