import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/login_screen.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Setting the background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/1.png'),
            fit:
                BoxFit.cover, // To make sure the image covers the entire screen
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 350),
            decoration: BoxDecoration(
              color: Color(0xff6A6A6A).withValues(alpha: 0.8),
              borderRadius: BorderRadius.circular(29),
            ),
            width: 310,
            height: 350,
            child: Column(
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Let's Achieve Your Desired Body Shape",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Track your daily activities, burned calories, and achieve your Goals',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight:
                          FontWeight.bold, // Text color to make it readable
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginWidget()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: KAppBarColor,
                  ),
                  icon: Icon(Icons.play_arrow, size: 40),
                  label: Text(
                    'Start',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
