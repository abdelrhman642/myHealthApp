import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Diet/HighCalories_page.dart';
import 'package:health_app/pages/Diet/Low%20calories_page.dart';
import 'package:health_app/pages/Diet/Medium%20calories_page.dart';
import 'package:health_app/widgets/custom_containerDiet.dart';

class DietHome extends StatelessWidget {
  const DietHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      body: Column(
        children: [
          CustomContainerdiet(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LowCalories()),
              );
            },
            name: 'Low calories diet',
            title: '1445 calories',
            value1: '119g',
            value2: '52g',
            value3: '101g',
          ),

          CustomContainerdiet(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MediumCaloriesPage()),
              );
            },
            name: 'Medium calories diet',
            title: '2732 calories',
            value1: '342.7g',
            value2: '84.8g',
            value3: '151g',
          ),

          CustomContainerdiet(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HighcaloriesPage()),
              );
            },
            name: 'High calories diet',
            title: '3684 calories',
            value1: '508g',
            value2: '87g',
            value3: '167g',
          ),
        ],
      ),
    );
  }
}
