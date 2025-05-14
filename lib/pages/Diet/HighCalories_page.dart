import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/coustom_containrtDiet.dart';

class HighcaloriesPage extends StatelessWidget {
  const HighcaloriesPage({super.key});

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
                    customImage: 'assets/image/image copy 26.png',
                    name: 'Oatmeal pancake',
                    value1: '14g',
                    value2: '20g',
                    value3: '28g',
                    finalGram: '200g',
                    finalCalories: '386 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 25.png',
                    name: 'Dates',
                    value1: '4g',
                    value2: '1g',
                    value3: '114g',
                    finalGram: '170g',
                    finalCalories: '479 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 23.png',
                    name: 'Greek yogurt',
                    value1: '19g',
                    value2: '3g',
                    value3: '7g',
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
                    value1: '14g',
                    value2: '20g',
                    value3: '28g',
                    finalGram: '200g',
                    finalCalories: '386 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 27.png',
                    name: 'Boiled potatoes',
                    value1: '4g',
                    value2: '0g',
                    value3: '45g',
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
                    value1: '44g',
                    value2: '3g',
                    value3: '0g',
                    finalGram: '170g',
                    finalCalories: '218g',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 21.png',
                    name: 'Rice',
                    value1: '7g',
                    value2: '1g',
                    value3: '70g',
                    finalGram: '250g',
                    finalCalories: '325cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 27.png',
                    name: 'Boiled potatoes',
                    value1: '4g',
                    value2: '0g',
                    value3: '45g',
                    finalGram: '250g',
                    finalCalories: '215cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 29.png',
                    name: 'Almond',
                    value1: '6g',
                    value2: '15g',
                    value3: '6g',
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
                    value1: '4g',
                    value2: '0g',
                    value3: '45g',
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
                    value1: '14g',
                    value2: '20g',
                    value3: '28g',
                    finalGram: '200g',
                    finalCalories: '386 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 25.png',
                    name: 'Dates',
                    value1: '4g',
                    value2: '1g',
                    value3: '114g',
                    finalGram: '170g',
                    finalCalories: '479 cal',
                  ),
                  Divider(color: Colors.black),
                  CustomContainerDiet(
                    customImage: 'assets/image/image copy 23.png',
                    name: 'cottage cheese (low-fat)',
                    value1: '19g',
                    value2: '3g',
                    value3: '7g',
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
