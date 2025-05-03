import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  CustomBottom({
    this.textColor,
    this.onTap,
    this.title,
    this.colorsIcon,
    super.key,
  });
   Color? colorsIcon;
  Color? textColor;
  String? title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        alignment: Alignment.center,
         child: Text(
          title!,
          style: TextStyle(
            fontSize: 15,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: BoxDecoration(
          color: colorsIcon,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
