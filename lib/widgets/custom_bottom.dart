import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  CustomBottom({
   required this.textColor,
   required this.onTap,
   required this.title,
   required this.colorsIcon,
   required this.fontSize,
    super.key,
  });
 final Color? colorsIcon;
final  Color? textColor;
final  String? title;
final  double? fontSize;
 final VoidCallback? onTap;
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
                fontSize:fontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
    
  }
}
