import 'package:flutter/material.dart';

class CustomContainerhome extends StatelessWidget {
  const CustomContainerhome({
    required this.fontSize,
    required this.imagecontainer,
    required this.textContainer,
    super.key,
  });
  final String? textContainer;
  final Image? imagecontainer;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),

      width: 260,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(height: 160, width: 255, child: imagecontainer!),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                textContainer!,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
