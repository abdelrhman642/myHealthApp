import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/back/Back_page.dart';
import 'package:health_app/pages/Exercise/chest/Chest_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_gymExercise.dart';

class GymExercise extends StatelessWidget {
  const GymExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Gym Exercise',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'KottaOne',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
                  image: 'assets/image/Rectangle 72.png',
                  title: 'CHEST',
                ),

                CustomGymexercise(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BackPage()),
                    );
                  },
                  image: 'assets/image/Rectangle 74.png',
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
                  image: 'assets/image/Rectangle 78.png',
                  title: 'BICEPS',
                ),

                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/Rectangle 75.png',
                  title: 'TRICEPS',
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/Rectangle 73.png',
                  title: 'LEG',
                ),

                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/Rectangle 76.png',
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
                  image: 'assets/image/Rectangle 39.png',
                  title: 'ABS',
                ),

                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/Rectangle 77.png',
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
