import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class CustomTextfild extends StatelessWidget {
  CustomTextfild({
    required this.obscureText,
    required this.colorsIcon,
    required this.prefixIcon,
    required this.hintText,

    super.key,
  });
  final String? hintText;
  final IconData? prefixIcon;
  final Color? colorsIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      obscuringCharacter: '*',
      style: const TextStyle(color: Colors.white, fontSize: 25),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff9f9c9c9c).withOpacity(0.61),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: KAppBarColor,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(prefixIcon, color: colorsIcon),
      ),
    );
  }
}
