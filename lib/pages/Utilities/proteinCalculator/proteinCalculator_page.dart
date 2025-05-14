import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Utilities/proteinCalculator/proteinResuit_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class ProteinCalculator extends StatefulWidget {
  const ProteinCalculator({super.key});

  @override
  State<ProteinCalculator> createState() => _ProteinCalculatorState();
}

class _ProteinCalculatorState extends State<ProteinCalculator> {
  int weight = 50;
  String selectedLevel = 'No exercise';

  final List<String> fitnessLevels = [
    'No exercise',
    'Low level training',
    'Active level training',
    'Sports',
    'Weight training',
  ];

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
          'protein Calculator',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'KottaOne',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: KbackroundColor,
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 200,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/image copy 6.png',
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      'M A L E',
                      style: TextStyle(
                        color: Color(0xff990011),
                        fontSize: 25,
                        fontFamily: 'KottaOne',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 200,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/image copy 30.png',
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      'F E M A L E',
                      style: TextStyle(
                        color: Color(0xff990011),
                        fontSize: 25,
                        fontFamily: 'KottaOne',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fitness Level',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'KottaOne',
                    color: Colors.black,
                  ),
                ),
                Divider(color: Color(0xff990011), thickness: 2),
                ...fitnessLevels.map((level) {
                  return Row(
                    children: [
                      Radio<String>(
                        value: level,
                        groupValue: selectedLevel,
                        activeColor: Colors.black,

                        onChanged: (value) {
                          setState(() {
                            selectedLevel = value!;
                          });
                        },
                      ),

                      Text(
                        level,
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'KottaOne',
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80, left: 80),
            child: ElevatedButton(
              onPressed: () {
                var result = ((0.0008 * weight));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProteinresuitPage(result: result),
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
          ),
        ],
      ),
    );
  }
}
