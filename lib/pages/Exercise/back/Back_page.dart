import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/back/LowerBack_page.dart';
import 'package:health_app/pages/Exercise/back/Trapezius_page.dart';
import 'package:health_app/pages/Exercise/back/UpperBack_page.dart';
import 'package:health_app/widgets/customExerciseContainer.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class BackPage extends StatelessWidget {
  const BackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'Back'),
      body: ListView(
        children: [
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrapeziusPage()),
              );
            },
            title: 'Trapezius ',
            image: 'assets/image/Rectangle 194.png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lowerback()),
              );
            },
            title: 'Lower back',
            image: 'assets/image/Rectangle 195.png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Upperback()),
              );
            },
            title: 'Upper back',
            image: 'assets/image/Rectangle 196.png',
          ),
        ],
      ),
    );
  }
}
