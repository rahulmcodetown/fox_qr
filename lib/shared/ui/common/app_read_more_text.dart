import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';
import 'package:flutter/material.dart';

class AppReadMoreText extends StatefulWidget {
  final String text;

  const AppReadMoreText({required this.text, Key? key}) : super(key: key);

  @override
  State<AppReadMoreText> createState() => _AppReadMoreTextState();
}

class _AppReadMoreTextState extends State<AppReadMoreText> {
  bool isExpanded = false;
  String readMoreText = '';

  @override
  void initState() {
    super.initState();
    _paraManipulate();
  }

  void _paraManipulate() {
    if (widget.text.length >= 180 && isExpanded.not) {
      readMoreText = '${widget.text.substring(0, 180)}.....';
      return;
    }
    readMoreText = widget.text;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: animDuration,
      child: GestureDetector(
        onTap: () {
          isExpanded = !isExpanded;
          _paraManipulate();
          setState(() {});
        },
        child: Text.rich(
          TextSpan(
            text: readMoreText,
            children: [
              if (widget.text.length >= 180) ...{
                TextSpan(
                  text: isExpanded ? Strings.readLess : Strings.readMore,
                  style: AppText.text14w700appColor,
                ),
              },
            ],
          ),
          style: AppText.text14w400,
        ),
      ),
    );
  }
}
