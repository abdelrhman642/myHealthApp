import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  CustomBottom({this.title, this.colorsIcon, super.key});
  Color? colorsIcon;
  String? title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(title);
      },
      child: Container(
        height: 50,
        width: 200,
        alignment: Alignment.center,
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
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
