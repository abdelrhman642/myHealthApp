import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/coustom_containrtDiet.dart';

class HighcaloriesPage extends StatelessWidget {
  const  HighcaloriesPage({super.key});

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
          'High calories diet',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'KottaOne',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset('assets/image/image copy 8.png', width: 30),
                Text(
                  ' Breakfast',
                  style: TextStyle(
                    color: Color(0xffEEA47F),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 11.png',
                    name: 'Egg',
                    value1: '6.3g',
                    value2: '5g',
                    value3: '0.4g',
                    finalGram: '50g',
                    finalCalories: '71.5 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 12.png',
                    name: 'Veta Cheese',
                    value1: '8g',
                    value2: '12g',
                    value3: '2.2g',
                    finalGram: '48g',
                    finalCalories: '148 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 13.png',
                    name: 'Bread',
                    value1: '4g',
                    value2: '0.6g',
                    value3: '21g',
                    finalGram: '600g',
                    finalCalories: '90cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 18.png',
                    name: 'Cucumber',
                    value1: '52g',
                    value2: '8g',
                    value3: '1g',
                    finalGram: '170g',
                    finalCalories: '316g',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 20),
            child: Row(
              children: [
                Image.asset('assets/image/image copy 8.png', width: 30),
                Text(
                  ' Snacks',
                  style: TextStyle(
                    color: Color(0xffEEA47F),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 19.png',
                    name: 'Orange',
                    value1: '15g',
                    value2: '0.2g',
                    value3: '1.2g',
                    finalGram: '130g',
                    finalCalories: '61.6cal',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset('assets/image/image copy 8.png', width: 30),
                Text(
                  ' Lunch',
                  style: TextStyle(
                    color: Color(0xffEEA47F),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 14.png',
                    name: 'Grilled Chicken',
                    value1: '52g',
                    value2: '8g',
                    value3: '1g',
                    finalGram: '170g',
                    finalCalories: '316g',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 15.png',
                    name: 'Salad',
                    value1: '2g',
                    value2: '3g',
                    value3: '9g',
                    finalGram: '200g',
                    finalCalories: '80cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 13.png',
                    name: 'Bread',
                    value1: '7.2g',
                    value2: '1.8g',
                    value3: '23g',
                    finalGram: '48g',
                    finalCalories: '140 cal',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset('assets/image/image copy 8.png', width: 30),
                Text(
                  ' Dinner',
                  style: TextStyle(
                    color: Color(0xffEEA47F),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 16.png',
                    name: 'Apple',
                    value1: '0.5g',
                    value2: '0.2g',
                    value3: '28g',
                    finalGram: '138g',
                    finalCalories: '71.8 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 17.png',
                    name: 'Yogurt',
                    value1: '14g',
                    value2: '14g',
                    value3: '20g',
                    finalGram: '180g',
                    finalCalories: '386 cal',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
