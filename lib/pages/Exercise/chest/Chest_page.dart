import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/back/Trapezius_page.dart';
import 'package:health_app/pages/Exercise/chest/LowerChest_page.dart';
import 'package:health_app/pages/Exercise/chest/UpperChest_page.dart';
import 'package:health_app/pages/Exercise/chest/middleChest_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/customExerciseContainer.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'chest'),
      body: ListView(
        children: [
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Middlechest()),
              );
            },
            title: 'Middle chest',
            image: 'assets/image/Rectangle 194 (1).png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LowerChest()),
              );
            },
            title: 'Lower chest ',
            image: 'assets/image/image copy 31.png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpperChest()),
              );
            },
            title: 'Upper chest',
            image: 'assets/image/image copy 32.png',
          ),
        ],
      ),
    );
  }
}
