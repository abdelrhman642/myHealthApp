import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Utilities/BMI%20Calculator/BMIResuit_page.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  List<int> values = [50, 170];
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'BMI Calculator'),
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
                    _buildIcon(0, false),
                    Text(values[0].toString(), style: TextStyle(fontSize: 25)),
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
                  'hight',
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
                    Text(values[1].toString(), style: TextStyle(fontSize: 25)),
                    Text(
                      '  M',
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
          ElevatedButton(
            onPressed: () {
              double calculateBMI(int weightKg, int heightMeters) {
                return (weightKg / (heightMeters * heightMeters)) * 10000;
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          BMIResuit(result: calculateBMI(values[0], values[1])),
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
