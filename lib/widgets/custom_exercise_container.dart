import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class CustomExerciseContainer extends StatelessWidget {
  const CustomExerciseContainer({
    this.image,
    required this.onTap,
    required this.title,
    required this.title2,
    super.key,
  });
  final String? title;
  final String? image;
  final String? title2;
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
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'KottaOne',
                ),
              ),
              SizedBox(width: 40),
              Text(
                title2!,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'KottaOne',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
