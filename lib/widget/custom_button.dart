import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final TextStyle? style;
  final ButtonStyle? buttonStyle;
  final double? horizontalpadding;
  final double? verticalpadding;
  final double? btnHeight;
  final double? btnWidth;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPress,
    this.style,
    this.buttonStyle,
    this.horizontalpadding,
    this.verticalpadding,
    this.btnHeight,
    this.btnWidth,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: btnWidth ?? double.infinity,
      height: btnHeight ?? height * 0.055,
      child: ElevatedButton(
        style:
            buttonStyle ??
            ElevatedButton.styleFrom(
              backgroundColor: appColor.primaryBlue,
              padding: EdgeInsets.symmetric(
                horizontal: horizontalpadding ?? 0,
                vertical: verticalpadding ?? 0,
              ),
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(25)),
              ),
            ),
        onPressed: onPress,
        child: Text(text, style: style ?? customBtnStyle()),
      ),
    );
  }
}
