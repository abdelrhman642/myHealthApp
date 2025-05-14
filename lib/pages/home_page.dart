import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Diet/DietHome_page.dart';
import 'package:health_app/pages/Exercise/exercise_page.dart';
import 'package:health_app/pages/Physicaldisabilities/BenefitsSport_page.dart';
import 'package:health_app/pages/Utilities/utilitiesHomePage.dart';
import 'package:health_app/pages/health&sport/Diseasesarticles_page.dart';
import 'package:health_app/pages/Physicaldisabilities/FitnessProgram_page.dart';
import 'package:health_app/pages/Tips/FitnessTips_page.dart';
import 'package:health_app/pages/Physicaldisabilities/PhysicalDisabilities_page.dart';
import 'package:health_app/pages/health&sport/Pregnancyarticles_page.dart';
import 'package:health_app/pages/Physicaldisabilities/SocialContact_page.dart';
import 'package:health_app/pages/Tips/diet_tips_page.dart';

import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_AppBar.dart';
import 'package:health_app/widgets/custom_containerHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        labelTextStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white)),
        indicatorColor: Colors.white.withOpacity(0.0),
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
              'assets/image/image copy 3.png',
              width: 50,
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
      appBar: CustomAppbar(text: getTitle(index)),
      body: getPages(index),
    );
  }
}

Widget getPages(index) {
  return switch (index) {
    0 => Home(),
    1 => ExercisePage(),
    2 => DietHome(),
    3 => Utilitieshomepage(),
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
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: ListView(
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
                      MaterialPageRoute(
                        builder: (context) => FitnesstipsPage(),
                      ),
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
          Spacer(),
          Divider(color: Color(KAppBarColor.value)),
        ],
      ),
    );
  }
}
