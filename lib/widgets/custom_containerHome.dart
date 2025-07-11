import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class CustomContainerhome extends StatelessWidget {
  const CustomContainerhome({
    required this.fontSize,
    required this.imagecontainer,
    required this.textContainer,
    required this.onTap,
    super.key,
  });
  final String? textContainer;
  final Image? imagecontainer;
  final double? fontSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(25),
      child: Container(
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
              child: SizedBox(height: 160, width: 255, child: imagecontainer!),
            ),
            InkWell(
              splashColor: Color(KAppBarColor.value),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    textContainer!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
