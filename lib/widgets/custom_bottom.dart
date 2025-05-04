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
    return SizedBox(
     height: 50,
          width: 200,
      child: ElevatedButton(
        onPressed:onTap,
        style: ElevatedButton.styleFrom(
          overlayColor:
          Colors.black,
          backgroundColor:colorsIcon,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          title!,
          style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
    
  }
}
