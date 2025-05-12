import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Utilities/WaterCalculator/waterResult_pagr.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class Watercalculator extends StatefulWidget {
  const Watercalculator({super.key});

  @override
  State<Watercalculator> createState() => _WatercalculatorState();
}

class _WatercalculatorState extends State<Watercalculator> {
  int weight = 50;
  int exercise = 60;
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
          'Water  Calculator',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'KottaOne',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFCF6F5),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Weight',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'KottaOne',
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                      icon: Icon(
                        size: 40,
                        color: Color(0xff990011),
                        Icons.remove_circle_outline,
                      ),
                    ),
                    Text(weight.toString(), style: TextStyle(fontSize: 25)),
                    Text(
                      '  kg',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      icon: Icon(
                        size: 40,
                        color: Color(0xff990011),
                        Icons.add_circle_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Color(0xffFCF6F5),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Exercise time per day',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'KottaOne',
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          exercise--;
                          print(exercise);
                        });
                      },
                      icon: Icon(
                        size: 40,
                        color: Color(0xff990011),
                        Icons.remove_circle_outline,
                      ),
                    ),
                    Text(exercise.toString(), style: TextStyle(fontSize: 25)),
                    Text(
                      '  M',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          exercise++;
                        });
                      },
                      icon: Icon(
                        size: 40,
                        color: Color(0xff990011),
                        Icons.add_circle_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              var result = ((exercise * 0.0008 * weight));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WaterResult(result: result),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "calculate",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontFamily: 'KottaOne',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
