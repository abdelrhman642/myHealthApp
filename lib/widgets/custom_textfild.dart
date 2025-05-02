import 'package:flutter/material.dart';

class CustomTextfild extends StatelessWidget {
  CustomTextfild({this.colorsIcon, this.prefixIcon, this.hintText, super.key});
  String? hintText;
  IconData? prefixIcon;
  Color? colorsIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white, fontSize: 20),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff9F9C9C9C).withOpacity(0.61),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(prefixIcon, color: colorsIcon),
      ),
    );
  }
}
