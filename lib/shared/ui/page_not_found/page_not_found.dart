import 'package:fox/themes/app_text.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Not Found',
            style: AppText.text14w400,
          ),
        ),
      ),
    );
  }
}
