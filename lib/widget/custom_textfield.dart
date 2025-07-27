import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool? obsecureText;
  final TextCapitalization? textCapitalization;
  final double? verticalpadding;
  final double? horizontalpadding;
  final InputBorder? inputBorder;
  final Color? textfieldBGColor;
  final bool? isFilled;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextStyle? textfieldInputStyle;

  const CustomTextfield({
    super.key,
    required this.textEditingController,
    this.textInputType,
    this.validator,
    this.textInputAction,
    this.obsecureText,
    this.textCapitalization,
    this.verticalpadding,
    this.horizontalpadding,
    this.inputBorder,
    this.textfieldBGColor,
    this.isFilled,
    this.hintText,
    this.hintTextStyle,
    this.textfieldInputStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalpadding ?? 0,
        horizontal: horizontalpadding ?? 0,
      ),
      child: TextFormField(
        controller: textEditingController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: textInputType,
        validator: validator,
        textInputAction: textInputAction,
        obscureText: obsecureText ?? false,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        style: textfieldInputStyle ?? textfieldStyle(),
        decoration: InputDecoration(
          border: inputBorder ?? InputBorder.none,
          fillColor: textfieldBGColor ?? appColor.lightGrey40,
          filled: isFilled ?? true,
          hintText: hintText,
          hintStyle: hintTextStyle ?? customHintTextStyle(),
        ),
      ),
    );
  }
}
