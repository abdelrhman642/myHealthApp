import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/Leg/Anterior%20Leg_page.dart';
import 'package:health_app/pages/Exercise/Leg/Posteriorleg_page.dart';
import 'package:health_app/widgets/customExerciseContainer.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class LegPage extends StatelessWidget {
  const LegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'Leg'),
      body: ListView(
        children: [
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Posteriorleg()),
              );
            },
            title: 'Posterior leg',
            image: 'assets/image/image copy 33.png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnteriorlegPage()),
              );
            },
            title: 'Anterior leg',
            image: 'assets/image/image copy 34.png',
          ),
        ],
      ),
    );
  }
}
