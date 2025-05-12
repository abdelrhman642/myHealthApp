import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class CustomGymexercise extends StatelessWidget {
  const CustomGymexercise({
    this.image,
    required this.onTap,
    required this.title,

    super.key,
  });
  final String? title;
  final String? image;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      splashColor: Color(KAppBarColor.value),

      onTap: () {
        onTap!();
      },
      child: Column(
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Text(
            title!,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'KottaOne',
            ),
          ),
        ],
      ),
    );
  }
}
