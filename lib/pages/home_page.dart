import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_containerHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff375D89),
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
          'Home',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'KottaOne',
          ),
        ),
        leading: Icon(Icons.more_vert, color: Colors.white, size: 40),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 7),
            child: Text(
              'Tips',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomContainerhome(
                    fontSize: 25,

                    textContainer: 'Diet Tips',
                    imagecontainer: Image.asset(
                      'assets/image/Rectangle 22.png',
                    ),
                  ),
                  SizedBox(width: 8),
                  CustomContainerhome(
                    fontSize: 25,
                    textContainer: 'Fitness Tips',
                    imagecontainer: Image.asset(
                      'assets/image/Rectangle 20.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 7),
            child: Text(
              'Health and sports',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomContainerhome(
                  fontSize: 25,
                  imagecontainer: Image.asset('assets/image/Rectangle 26.png'),
                  textContainer: 'Pregnancy articles',
                ),
                SizedBox(width: 8),
                CustomContainerhome(
                  fontSize: 25,
                  imagecontainer: Image.asset('assets/image/Rectangle 24.png'),
                  textContainer: 'Diseases articles',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 7),
            child: Text(
              'Physical disabilities',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomContainerhome(
                  fontSize: 25,
                  imagecontainer: Image.asset('assets/image/Rectangle 30.png'),
                  textContainer: 'Physical disabilities',
                ),
                SizedBox(width: 8),
                CustomContainerhome(
                  fontSize: 25,
                  imagecontainer: Image.asset('assets/image/Rectangle 28.png'),
                  textContainer: 'Fitness program',
                ),
                SizedBox(width: 8),
                CustomContainerhome(
                  fontSize: 25,
                  imagecontainer: Image.asset('assets/image/Rectangle 266.png'),
                  textContainer: 'Social contact',
                ),
                SizedBox(width: 8),
                CustomContainerhome(
                  fontSize: 25,
                  imagecontainer: Image.asset('assets/image/Rectangle 264.png'),
                  textContainer: 'Benefits of sports activity',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
