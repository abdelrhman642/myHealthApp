import 'package:flutter/material.dart';

class CustomContainerDiet extends StatelessWidget {
  const CustomContainerDiet({
    super.key,
    required this.customImage,
    required this.name,
    required this.protein,
    required this.fats,
    required this.carb,
    required this.finalGram,
    required this.finalCalories,
  });
  final String? name;
  final String? protein;
  final String? fats;
  final String? carb;
  final String? customImage;
  final String? finalGram;
  final String? finalCalories;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              height: 100,
              width: 100,
              customImage!,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        ' protein: ',
                        style: TextStyle(fontSize: 20, fontFamily: 'KottaOne'),
                      ),
                      Text(
                        protein!,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'KottaOne',
                          color: Color(0xff990011),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' Fats: ',
                        style: TextStyle(fontSize: 20, fontFamily: 'KottaOne'),
                      ),
                      Text(
                        fats!,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'KottaOne',
                          color: Color(0xff990011),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' carb: ',
                        style: TextStyle(fontSize: 20, fontFamily: 'KottaOne'),
                      ),
                      Text(
                        carb!,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'KottaOne',
                          color: Color(0xff990011),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    finalGram!,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'KottaOne',
                      color: Color(0xff990011),
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    finalCalories!,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'KottaOne',
                      color: Color(0xff990011),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
