import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/widgets/custom_exercise_container.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            CustomExerciseContainer(
              image: 'assets/image/Rectangle 13.png',
              title: 'Gym',
              title2: 'exercise',
            ),
            CustomExerciseContainer(
              image: 'assets/image/Rectangle 15.png',
              title: 'Home',
              title2: 'exercise',
            ),
            CustomExerciseContainer(
              image: 'assets/image/Rectangle 14.png',
              title: 'Injuries',
              title2: 'exercise',
            ),
          ],
        ),
      ),
    );
  }
}
