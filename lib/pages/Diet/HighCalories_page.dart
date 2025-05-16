import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/coustom_containrtDiet.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class HighcaloriesPage extends StatelessWidget {
  const HighcaloriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'High calories diet'),
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
                    customImage: 'assets/image/image copy 26.png',
                    name: 'Oatmeal pancake',
                    protein: '14g',
                    fats: '20g',
                    carb: '28g',
                    finalGram: '200g',
                    finalCalories: '386 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 25.png',
                    name: 'Dates',
                    protein: '4g',
                    fats: '1g',
                    carb: '114g',
                    finalGram: '170g',
                    finalCalories: '479 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 23.png',
                    name: 'Greek yogurt',
                    protein: '19g',
                    fats: '3g',
                    carb: '7g',
                    finalGram: '180g',
                    finalCalories: '139cal',
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
                  ' After Breakfast',
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
                    customImage: 'assets/image/image copy 26.png',
                    name: 'Oatmeal pancake',
                    protein: '14g',
                    fats: '20g',
                    carb: '28g',
                    finalGram: '200g',
                    finalCalories: '386 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 27.png',
                    name: 'Boiled potatoes',
                    protein: '4g',
                    fats: '0g',
                    carb: '45g',
                    finalGram: '250g',
                    finalCalories: '215cal',
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
                    customImage: 'assets/image/image copy 28.png',
                    name: 'Grilled tilapia',
                    protein: '44g',
                    fats: '3g',
                    carb: '0g',
                    finalGram: '170g',
                    finalCalories: '218g',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 21.png',
                    name: 'Rice',
                    protein: '7g',
                    fats: '1g',
                    carb: '70g',
                    finalGram: '250g',
                    finalCalories: '325cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 27.png',
                    name: 'Boiled potatoes',
                    protein: '4g',
                    fats: '0g',
                    carb: '45g',
                    finalGram: '250g',
                    finalCalories: '215cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 29.png',
                    name: 'Almond',
                    protein: '6g',
                    fats: '15g',
                    carb: '6g',
                    finalGram: '30g',
                    finalCalories: '173cal',
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
                  ' After Lunch',
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
                    customImage: 'assets/image/image copy 27.png',
                    name: 'Boiled potatoes',
                    protein: '4g',
                    fats: '0g',
                    carb: '45g',
                    finalGram: '250g',
                    finalCalories: '215cal',
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
                    customImage: 'assets/image/image copy 26.png',
                    name: 'Oatmeal pancake',
                    protein: '14g',
                    fats: '20g',
                    carb: '28g',
                    finalGram: '200g',
                    finalCalories: '386 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 25.png',
                    name: 'Dates',
                    protein: '4g',
                    fats: '1g',
                    carb: '114g',
                    finalGram: '170g',
                    finalCalories: '479 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 23.png',
                    name: 'cottage cheese (low-fat)',
                    protein: '19g',
                    fats: '3g',
                    carb: '7g',
                    finalGram: '250g',
                    finalCalories: '180cal',
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
