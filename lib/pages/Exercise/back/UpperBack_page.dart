import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/%20custom_article.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class Upperback extends StatelessWidget {
  const Upperback ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'upper back'),
      body: ListView(
        children: [
          customArticle(
            textcolor: Colors.black,
            containerimage:
                'assets/image/e27dbec53891d6647fc95a491d775935d24b7579.png',
            containerText:
                "Muscles Involved primary: upper back, back shoulder secondary : inner forearm, outer forearm, lats Steps: Position yourself prone on an incline bench, with your legs extended behind you and arms extended just below shoulder level. Using an overhand grip greater than shoulder-width apart, pick up the barbell and exhale, rowing it towards your chest by driving your elbows out and backward, squeezing your shoulder blades together to do so. Continue to drive your elbows back and pull your shoulder blades together until your elbows are by your sides. Inhale and lower the barbell down, returning it to the starting position. Sets and reps 4 x 12",
            maincontainerText: 'Incline Barbell Row',
          ),
        ],
      ),
    );
  }
}
