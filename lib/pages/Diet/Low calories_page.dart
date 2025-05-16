import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/coustom_containrtDiet.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class LowCalories extends StatelessWidget {
  const LowCalories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'Low calories diet'),
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
                    protein: '6.3g',
                    fats: '5g',
                    carb: '0.4g',
                    finalGram: '50g',
                    finalCalories: '71.5 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 12.png',
                    name: 'Veta Cheese',
                    protein: '8g',
                    fats: '12g',
                    carb: '2.2g',
                    finalGram: '48g',
                    finalCalories: '148 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 13.png',
                    name: 'Bread',
                    protein: '4g',
                    fats: '0.6g',
                    carb: '21g',
                    finalGram: '600g',
                    finalCalories: '90cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 18.png',
                    name: 'Cucumber',
                    protein: '52g',
                    fats: '8g',
                    carb: '1g',
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
                    protein: '15g',
                    fats: '0.2g',
                    carb: '1.2g',
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
                    protein: '52g',
                    fats: '8g',
                    carb: '1g',
                    finalGram: '170g',
                    finalCalories: '316g',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 15.png',
                    name: 'Salad',
                    protein: '2g',
                    fats: '3g',
                    carb: '9g',
                    finalGram: '200g',
                    finalCalories: '80cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 13.png',
                    name: 'Bread',
                    protein: '7.2g',
                    fats: '1.8g',
                    carb: '23g',
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
                    protein: '0.5g',
                    fats: '0.2g',
                    carb: '28g',
                    finalGram: '138g',
                    finalCalories: '71.8 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 17.png',
                    name: 'Yogurt',
                    protein: '14g',
                    fats: '14g',
                    carb: '20g',
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
