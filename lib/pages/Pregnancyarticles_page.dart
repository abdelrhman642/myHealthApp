import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/%20custom_article.dart';

class PregnancyarticlesPage extends StatelessWidget {
  const PregnancyarticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: AppBar(
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
        backgroundColor: KAppBarColor,
        title: Text(
          'Diet Tips',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'KottaOne',
          ),
        ),
        leading: Icon(Icons.more_vert, color: Colors.white, size: 40),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            customArticle(
              maincontainerText: " Yoghurt as a Good Source of Calories :",
              containerText:
                  "Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.  Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.",
              containerimage: 'assets/image/Rectangle 305.png',
            ),

            SizedBox(height: 20),
            customArticle(
              maincontainerText: " Yoghurt as a Good Source of Calories :",
              containerText:
                  "Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.  Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.",
              containerimage: 'assets/image/Rectangle 305.png',
            ),
            SizedBox(height: 20),
            customArticle(
              maincontainerText: " Yoghurt as a Good Source of Calories :",
              containerText:
                  "Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.  Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.",
              containerimage: 'assets/image/Rectangle 305.png',
            ),
            SizedBox(height: 20),
            customArticle(
              maincontainerText: " Yoghurt as a Good Source of Calories :",
              containerText:
                  "Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.  Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.",
              containerimage: 'assets/image/Rectangle 305.png',
            ),
            SizedBox(height: 20),
            customArticle(
              maincontainerText: " Yoghurt as a Good Source of Calories :",
              containerText:
                  "Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.  Did you know? The bacteria used to make yoghurt is called yoghurt culture and February 6th is the world frozen yoghurt day.Yoghurt is a good source of protein to help you prevent muscle breakdown, and for muscle growth.Avoid yoghurt with added sugar fat as those increase calorie intake.It is advised you take plain yoghurt instead.Plain yoghurt is also a good source of calories to help you regain your lost energy, prevent fatigue or dizziness and reduce muscle soreness.",
              containerimage: 'assets/image/Rectangle 305.png',
            ),
          ],
        ),
      ),
    );
  }
}
