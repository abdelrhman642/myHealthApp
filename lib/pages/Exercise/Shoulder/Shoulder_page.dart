import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/Shoulder/AnteriorDeltoid_page.dart';
import 'package:health_app/pages/Exercise/Shoulder/LateralDeltoid_page.dart';
import 'package:health_app/pages/Exercise/Shoulder/PosteriorDeltoid_page.dart';

import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/customExerciseContainer.dart';

class ShoulderPage extends StatelessWidget {
  const ShoulderPage({super.key});

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
          'Shoulder ',
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
                MaterialPageRoute(builder: (context) => Lateraldeltoid()),
              );
            },
            title: 'Lateral deltoid',
            image: 'assets/image/image copy 35.png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Anteriordeltoid()),
              );
            },
            title: 'Anterior deltoid',
            image: 'assets/image/image copy 36.png',
          ),
          Divider(),
          ExerciseContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Posteriordeltoid()),
              );
            },
            title: 'Posterior deltoid',
            image: 'assets/image/image copy 37.png',
          ),
        ],
      ),
    );
  }
}
