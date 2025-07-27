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
  final String? title;
  final TextStyle? titleStyle;
  final double? radius;
  final double? sizeBoxHeight;

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
    this.title,
    this.titleStyle,
    this.radius,
    this.sizeBoxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalpadding ?? 0,
        horizontal: horizontalpadding ?? 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(title ?? "", style: titleStyle ?? editProfileTitle()),
            SizedBox(height: sizeBoxHeight ?? 8),
          ],
          TextFormField(
            autofocus: true,
            controller: textEditingController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: textInputType,
            validator: validator,
            textInputAction: textInputAction,
            obscureText: obsecureText ?? false,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            style: textfieldInputStyle ?? textfieldStyle(),
            decoration: InputDecoration(
              errorStyle: errorTextStyle(),
              border:
                  inputBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(radius ?? 8),
                    ),
                    borderSide: BorderSide.none,
                  ),
              fillColor: textfieldBGColor ?? appColor.lightGrey40,
              filled: isFilled ?? true,
              hintText: hintText,
              hintStyle: hintTextStyle ?? customHintTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
