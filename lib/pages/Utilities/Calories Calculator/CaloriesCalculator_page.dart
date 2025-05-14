import 'dart:async';
import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Utilities/Calories%20Calculator/CaloriesResuit_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class Caloriescalculator extends StatefulWidget {
  const Caloriescalculator({super.key});

  @override
  State<Caloriescalculator> createState() => _CaloriescalculatorState();
}

class _CaloriescalculatorState extends State<Caloriescalculator> {
  List<int> values = [50, 150, 10];
  Timer? _timer;
  String selectedLevel = 'No exercise';

  final List<String> fitnessLevels = [
    'Basic Metabolism',
    'No exercise',
    'sports 1-3 times a week',
    'sports 3-5 times a week',
    'sports 6-7 times a week',
    'hard exercise/sports',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar:CustomAppbar(text: 'Calories Calculator'),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
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
                        _buildIcon(0, false),
                        Text(
                          values[0].toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '  kg',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'KottaOne',
                          ),
                        ),

                        _buildIcon(0, true),
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
                      'height',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'KottaOne',
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildIcon(1, false),
                        Text(
                          values[1].toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '  CM',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'KottaOne',
                          ),
                        ),
                        _buildIcon(1, true),
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
                      'Age',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'KottaOne',
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildIcon(2, false),
                        Text(
                          values[2].toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '  Y',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'KottaOne',
                          ),
                        ),
                        _buildIcon(2, true),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: ElevatedButton(
              onPressed: () {
                var result =
                    (((values[0] * 10) +
                            (values[1] * 6.25) -
                            (values[2] * 5) +
                            5) *
                        1.2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CaloriesResuit(result: result),
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

  _buildIcon(int index, [bool isAdd = true]) {
    final icon = isAdd ? Icons.add_circle_outline : Icons.remove_circle_outline;
    void onTap() {
      if (!isAdd && values[index] <= 0) {
        return;
      }

      if (isAdd) {
        setState(() {
          values[index] = values[index] + 1;
        });
      } else {
        setState(() {
          values[index] = values[index] - 1;
        });
      }
    }

    return GestureDetector(
      onLongPress: () {
        _timer = Timer.periodic(Duration(milliseconds: 100), (_) {
          setState(() {
            onTap.call();
          });
        });
      },
      onLongPressEnd: (_) {
        _timer?.cancel();
      },

      onTap: onTap,
      child: IconButton(
        onPressed: null,
        icon: Icon(size: 40, color: Color(0xff990011), icon),
      ),
    );
  }
}
