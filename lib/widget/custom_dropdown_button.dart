import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final double? dropDownHeight;
  final double? dropDownWidth;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Widget? icon;
  final double? iconSize;
  final TextStyle? style;
  final InputDecoration? decoration;
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;
  final ValueChanged<T?>? onChanged;

  const CustomDropdownButton({
    super.key,
    required this.items,
    this.initialValue,
    this.dropDownHeight,
    this.dropDownWidth,
    this.padding,
    this.borderRadius,
    this.icon,
    this.iconSize,
    this.style,
    this.decoration,
    this.onChanged,
  });

  @override
  State<CustomDropdownButton<T>> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  late T selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue ?? widget.items.first.value as T;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.dropDownHeight ?? 50,
      width: widget.dropDownWidth ?? 30,
      child: DropdownButtonFormField<T>(
        value: selectedValue,
        items: widget.items,
        onChanged: (T? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(newValue);
          }
        },
        style: widget.style ?? searchvendorInputText(),
        icon: widget.icon ?? Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: widget.iconSize ?? 24,
        decoration:
            widget.decoration ??
            InputDecoration(
              contentPadding:
                  widget.padding ??
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              filled: true,
              fillColor: appColor.ghostWhite,
              border: OutlineInputBorder(
                borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      ),
    );
  }
}
