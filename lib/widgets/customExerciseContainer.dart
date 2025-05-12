import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';

class ExerciseContainer extends StatelessWidget {
  const ExerciseContainer({
    required this.onTap,
    required this.image,
    super.key,
    this.title,
  });
  final String? image;
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: InkWell(
        splashColor: Color(KAppBarColor.value),
        borderRadius: BorderRadius.circular(25),
        onTap: () {
          onTap!();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 135,
                width: 135,
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
                  fontFamily: 'KottaOne',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/image/image copy 4.png',
                  height: 60,
                  width: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
