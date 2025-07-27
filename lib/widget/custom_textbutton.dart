import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final TextStyle? textStyle;

  const CustomTextbutton({
    super.key,
    required this.onPress,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(text, style: textStyle ?? textButtonStyle()),
    );
  }
}
