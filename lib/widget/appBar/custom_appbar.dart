import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isCenter;
  final TextStyle? textStyle;
  final BorderSide? borderSide;
  final bool? isActionShow;
  final IconData? icon;
  final VoidCallback? onPress;

  const CustomAppbar({
    super.key,
    required this.title,
    this.isCenter,
    this.textStyle,
    this.borderSide,
    this.isActionShow = false,
    this.icon,
    this.onPress,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // standard AppBar height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: textStyle ?? appBarTextStyle()), 
      centerTitle: isCenter ?? true,
      shape: Border(
        bottom:
            borderSide ??
            BorderSide(
              color: appColor.lightCoolGray, // Color of the bottom line
              width: 1.0, // Thickness of the bottom line
            ),
      ),
      actions: isActionShow ?? false
          ? [IconButton(icon: Icon(icon), onPressed: onPress)]
          : null,
    );
  }
}
