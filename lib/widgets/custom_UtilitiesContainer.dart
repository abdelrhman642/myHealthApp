import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class CustomUtilitiesContainer extends StatelessWidget {
  const CustomUtilitiesContainer({
    required this.image,
    required this.text,
    required this.onTap,
    super.key,
  });
  final String? text;
  final String? image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      splashColor: Color(KAppBarColor.value),

      child: Container(
        color: Color(0xffFCF6F5),
        height: 200,
        width: width * 0.41,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image!, height: 85, width: 105),
            Text(
              text!,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Color(0xff990011),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
