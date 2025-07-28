import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class ProfileNavigateButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final TextStyle? textStyle;
  final IconData? icon;
  final Color? iconColor;
  final double? height;
  final double? iconSize;

  const ProfileNavigateButton({
    super.key,
    required this.onPress,
    required this.title,
    this.textStyle,
    this.icon,
    this.iconColor,
    this.height,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    final btnHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height ?? btnHeight * 0.056,
      child: InkWell(
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title, style: textStyle ?? editProfileText()),
            Icon(
              icon,
              color: iconColor ?? appColor.primaryBlue,
              size: iconSize ?? 24,
            ),
          ],
        ),
      ),
    );
  }
}
