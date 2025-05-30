import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class CustomTextfild extends StatefulWidget {
  CustomTextfild({
    required this.obscureText,
    required this.colorsIcon,
    required this.prefixIcon,
          this.controller,
    required this.hintText,
    this.validator,

    super.key,
  });
  final String? hintText;
  final IconData? prefixIcon;
  final Color? colorsIcon;
  final bool? obscureText;
  final FormFieldValidator? validator;
  final TextEditingController? controller;

  @override
  State<CustomTextfild> createState() => _CustomTextfildState();
}

class _CustomTextfildState extends State<CustomTextfild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText:obscureText && (widget.obscureText ?? false),
      obscuringCharacter: '*',

      style: const TextStyle(color: Colors.white, fontSize: 25),
      decoration: InputDecoration(
        suffixIcon:widget.obscureText == true? IconButton(
          color: KAppBarColor,
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
        ):null,
        filled: true,
        fillColor: const Color(0xff9f9c9c9c).withOpacity(0.61),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: KAppBarColor,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(widget.prefixIcon, color: widget.colorsIcon),
      ),
    );
  }
}
