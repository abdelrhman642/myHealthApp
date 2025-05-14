import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/Home%20exercise/HomeExercise_page.dart';
import 'package:health_app/pages/Exercise/Injuries%20exercise/InjuriesExercise_page.dart';
import 'package:health_app/pages/Exercise/gym%20exercise.dart';
import 'package:health_app/pages/start_screen.dart';
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GymExercise()),
                );
              },
              image: 'assets/image/Rectangle 13.png',
              title: 'Gym',
              title2: 'exercise',
            ),
            SizedBox(height: 20),
            CustomExerciseContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeexercisePage()),
                );
              },
              image: 'assets/image/Rectangle 15.png',
              title: 'Home',
              title2: 'exercise',
            ),
            SizedBox(height: 20),
            CustomExerciseContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Injuriesexercise()),
                );
              },
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
