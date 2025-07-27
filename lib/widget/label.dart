import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const Label({super.key, required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle ?? labelStyle());
  }
}
