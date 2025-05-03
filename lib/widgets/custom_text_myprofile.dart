import 'package:flutter/material.dart';

class CustomTextMyprofile extends StatelessWidget {
  const CustomTextMyprofile({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title : ',
          style: TextStyle(
            color: Colors.black,

            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
