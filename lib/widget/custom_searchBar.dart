import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomSearchbar extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? placeholderText;
  final WidgetStateProperty<Color?>? backgroundColor;
  final WidgetStateProperty<TextStyle?>? hintStyle;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final WidgetStateProperty<TextStyle?>? textStyle;
  final Widget? leadingWidget;
  final WidgetStateProperty<OutlinedBorder?>? shape;
  final double? verticalPadding;
  final double? horizontalPadding;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const CustomSearchbar({
    super.key,
    required this.textEditingController,
    this.placeholderText,
    this.backgroundColor,
    this.hintStyle,
    this.textInputType,
    this.textCapitalization,
    this.textStyle,
    this.leadingWidget,
    this.shape,
    this.horizontalPadding,
    this.verticalPadding,
    this.textInputAction,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: textEditingController,
      hintText: placeholderText,
      backgroundColor:
          backgroundColor ?? MaterialStateProperty.all(appColor.ghostWhite),
      hintStyle: MaterialStateProperty.all(searchvendorText()),
      keyboardType: textInputType ?? TextInputType.text,
      textCapitalization: textCapitalization ?? TextCapitalization.words,
      textStyle:
          textStyle ?? MaterialStateProperty.all(searchvendorInputText()),
      elevation: MaterialStateProperty.all(0.0),
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child:
            leadingWidget ??
            Icon(Icons.search, color: appColor.steelBlue, size: 24),
      ),
      textInputAction: textInputAction ?? TextInputAction.search,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      shape:
          shape ??
          MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
              side: BorderSide.none,
            ),
          ),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          vertical: verticalPadding ?? 5,
          horizontal: horizontalPadding ?? 10,
        ),
      ),
    );
  }
}
