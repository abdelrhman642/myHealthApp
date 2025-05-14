import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Exercise/back/Trapezius_page.dart';
import 'package:health_app/pages/Exercise/chest/LowerChest_page.dart';
import 'package:health_app/pages/Exercise/chest/UpperChest_page.dart';
import 'package:health_app/pages/Exercise/chest/middleChest_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/customExerciseContainer.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({super.key});

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
          'Chest',
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
