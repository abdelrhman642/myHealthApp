import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Utilities/proteinCalculator/proteinResuit_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class ProteinCalculator extends StatefulWidget {
  const ProteinCalculator({super.key});

  @override
  State<ProteinCalculator> createState() => _ProteinCalculatorState();
}

class _ProteinCalculatorState extends State<ProteinCalculator> {
  int weight = 50;
  String selectedLevel = 'No exercise';
  bool isMale = true;

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
      appBar: CustomAppbar(text: 'protein Calculator'),
      backgroundColor: KbackroundColor,
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isMale ? KAppBarColor : Colors.white,

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
              ),
              GestureDetector(
                 onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: !isMale ? KAppBarColor : Colors.white,
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
