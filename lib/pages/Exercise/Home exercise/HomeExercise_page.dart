import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/Leg/Leg_page.dart';
import 'package:health_app/pages/Exercise/Shoulder/Shoulder_page.dart';
import 'package:health_app/pages/Exercise/back/Back_page.dart';
import 'package:health_app/pages/Exercise/chest/Chest_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_AppBar.dart';
import 'package:health_app/widgets/custom_gymExercise.dart';

class HomeexercisePage extends StatelessWidget {
  const HomeexercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: 'Home Exercise'),
      backgroundColor: KbackroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGymexercise(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChestPage()),
                    );
                  },
                  image: 'assets/image/image copy 38.png',
                  title: 'CHEST',
                ),

                CustomGymexercise(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BackPage()),
                    );
                  },
                  image: 'assets/image/image copy 39.png',
                  title: 'BACK',
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/image copy 40.png',
                  title: 'BICEPS',
                ),

                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/image copy 41.png',
                  title: 'TRICEPS',
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGymexercise(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LegPage()),
                    );
                  },
                  image: 'assets/image/image copy 42.png',
                  title: 'LEG',
                ),

                CustomGymexercise(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShoulderPage()),
                    );
                  },
                  image: 'assets/image/image copy 43.png',
                  title: 'SHOULDER',
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/image copy 44.png',
                  title: 'ABS',
                ),

                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/image copy 45.png',
                  title: 'CARDIO',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
