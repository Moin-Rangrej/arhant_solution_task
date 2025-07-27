import 'package:flutter/material.dart';

class Parent extends StatelessWidget {
  final double? paddingHorizontal;
  final double? paddingVertical;
  final Widget childWidget;

  const Parent({
    super.key,
    this.paddingHorizontal,
    this.paddingVertical,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 0,
          vertical: paddingVertical ?? 0,
        ),
        child: childWidget,
      ),
    );
  }
}
