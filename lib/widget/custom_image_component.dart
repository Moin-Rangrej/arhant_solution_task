import 'package:flutter/material.dart';

class CustomImageComponent extends StatelessWidget {
  final String imageName;
  final double? height;
  final double? width;
  final FilterQuality? filterQuality;
  final BoxFit? boxFit;

  const CustomImageComponent({
    super.key,
    required this.imageName,
    this.height,
    this.width,
    this.filterQuality,
    this.boxFit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName,
      height: height ?? 100,
      width: width ?? 100,
      filterQuality: filterQuality ?? FilterQuality.medium,
      fit: boxFit ?? BoxFit.contain,
      opacity: AlwaysStoppedAnimation(50),
    );
  }
}
