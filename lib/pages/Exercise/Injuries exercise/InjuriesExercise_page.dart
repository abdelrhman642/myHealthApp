import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/Leg/Leg_page.dart';
import 'package:health_app/pages/Exercise/Shoulder/Shoulder_page.dart';
import 'package:health_app/pages/Exercise/back/Back_page.dart';
import 'package:health_app/pages/Exercise/chest/Chest_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_gymExercise.dart';

class Injuriesexercise extends StatelessWidget {
  const Injuriesexercise({super.key});

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
          'Injuries exercise',
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
                  image: 'assets/image/image copy 46.png',
                  title: 'Low back',
                ),

                CustomGymexercise(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BackPage()),
                    );
                  },
                  image: 'assets/image/image copy 47.png',
                  title: 'ANKLE',
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/image copy 48.png',
                  title: 'KNEE',
                ),

                CustomGymexercise(
                  onTap: () {},
                  image: 'assets/image/image copy 49.png',
                  title: 'NECK',
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomGymexercise(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LegPage()),
                      );
                    },
                    image: 'assets/image/image copy 50.png',
                    title: 'SHOULDER',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
