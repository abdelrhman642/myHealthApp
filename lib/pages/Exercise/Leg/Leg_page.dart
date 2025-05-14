import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/Leg/Anterior%20Leg_page.dart';
import 'package:health_app/pages/Exercise/Leg/Posteriorleg_page.dart';
import 'package:health_app/pages/Exercise/back/Trapezius_page.dart';
import 'package:health_app/pages/Exercise/chest/LowerChest_page.dart';
import 'package:health_app/pages/Exercise/chest/UpperChest_page.dart';
import 'package:health_app/pages/Exercise/chest/middleChest_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/customExerciseContainer.dart';

class LegPage extends StatelessWidget {
  const LegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 50),
        backgroundColor: KAppBarColor,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              },
              icon: Icon(Icons.account_circle, color: Colors.white, size: 40),
            ),
          ),
        ],
        title: Text(
          'Leg',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'KottaOne',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
