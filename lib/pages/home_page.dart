import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/BenefitsSport_page.dart';
import 'package:health_app/pages/Diseasesarticles_page.dart';
import 'package:health_app/pages/FitnessProgram_page.dart';
import 'package:health_app/pages/FitnessTips_page.dart';
import 'package:health_app/pages/PhysicalDisabilities_page.dart';
import 'package:health_app/pages/Pregnancyarticles_page.dart';
import 'package:health_app/pages/SocialContact_page.dart';
import 'package:health_app/pages/diet_tips_page.dart';
import 'package:health_app/pages/exercise_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_containerHome.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final pages = [MyProfile(), MyProfile(), MyProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        backgroundColor: Color(0xff375D89),
        height: 72,

        destinations: [
          NavigationDestination(
            selectedIcon: Image.asset(
              'assets/image/image.png',
              width: 50,
              height: 50,
              color: KAppBarColor,
            ),
            icon: Image.asset('assets/image/image.png', width: 50, height: 50),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Image.asset(
              'assets/image/image copy.png',
              width: 50,
              height: 50,
              color: KAppBarColor,
            ),
            icon: Image.asset(
              'assets/image/image copy.png',
              width: 50,
              height: 50,
            ),
            label: 'Exercise',
          ),
          NavigationDestination(
            selectedIcon: Image.asset(
              'assets/image/image copy 2.png',
              width: 50,
              height: 50,
              color: KAppBarColor,
            ),
            icon: Image.asset(
              'assets/image/image copy 2.png',
              width: 50,
              height: 50,
            ),
            label: 'Diet',
          ),
          NavigationDestination(
            selectedIcon: Image.asset(
              'Icons.home, size: 45',
              width: 20,
              height: 50,
              color: KAppBarColor,
            ),
            icon: Image.asset(
              'assets/image/image copy 3.png',
              width: 50,
              height: 50,
              color: Colors.white,
            ),
            label: 'Utilities',
          ),
        ],
      ),
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
          getTitle(index),
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'KottaOne',
          ),
        ),
        leading: Icon(Icons.more_vert, color: Colors.white, size: 40),
      ),
      body: getPages(index),
    );
  }
}

Widget getPages(index) {
  return switch (index) {
    0 => Home(),
    1 => ExercisePage(),
    2 => SizedBox(),
    3 => SizedBox(),
    _ => SizedBox(),
  };
}

String getTitle(index) {
  return switch (index) {
    0 => 'Home',
    1 => 'Exercise',
    2 => 'Diet',
    3 => 'Utilities',

    _ => 'SizedBox',
  };
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomContainerhome(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DietTipsPage()),
                  );
                },
                fontSize: 25,

                textContainer: 'Diet Tips',
                imagecontainer: Image.asset('assets/image/Rectangle 22.png'),
              ),
              SizedBox(width: 8),
              CustomContainerhome(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FitnesstipsPage()),
                  );
                },
                fontSize: 25,
                textContainer: 'Fitness Tips',
                imagecontainer: Image.asset('assets/image/Rectangle 20.png'),
              ),
            ],
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PregnancyarticlesPage(),
                    ),
                  );
                },
                fontSize: 25,
                imagecontainer: Image.asset('assets/image/Rectangle 26.png'),
                textContainer: 'Pregnancy articles',
              ),
              SizedBox(width: 8),
              CustomContainerhome(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DiseasesarticlesPage(),
                    ),
                  );
                },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhysicaldisabilitiesPage(),
                    ),
                  );
                },
                fontSize: 25,
                imagecontainer: Image.asset('assets/image/Rectangle 30.png'),
                textContainer: 'Physical disabilities',
              ),
              SizedBox(width: 8),
              CustomContainerhome(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FitnessprogramPage(),
                    ),
                  );
                },
                fontSize: 25,
                imagecontainer: Image.asset('assets/image/Rectangle 28.png'),
                textContainer: 'Fitness program',
              ),
              SizedBox(width: 8),
              CustomContainerhome(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SocialcontactPage(),
                    ),
                  );
                },
                fontSize: 25,
                imagecontainer: Image.asset('assets/image/Rectangle 266.png'),
                textContainer: 'Social contact',
              ),
              SizedBox(width: 8),
              CustomContainerhome(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BenefitssportPage(),
                    ),
                  );
                },
                fontSize: 25,
                imagecontainer: Image.asset('assets/image/Rectangle 264.png'),
                textContainer: 'Benefits of sports activity',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
