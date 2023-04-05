import 'package:flutter/material.dart';

class ContentArgs {
  final String title;
  final VoidCallback onTap;
  final String contentUrl;

  ContentArgs({
    required this.title,
    required this.onTap,
    required this.contentUrl,
  });
}
