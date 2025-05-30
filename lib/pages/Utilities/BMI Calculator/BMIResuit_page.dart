import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/widgets/custom_AppBar.dart';
import 'package:health_app/widgets/custom_containerBim.dart';

class BMIResuit extends StatelessWidget {
  final double result;

  const BMIResuit({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'BMI result'),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: KAppBarColor, width: 3),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),

              margin: EdgeInsets.all(20),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your BMI score',
                    style: TextStyle(fontSize: 30, fontFamily: 'KottaOne'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      shape: BoxShape.rectangle,
                      border: Border.all(color: KAppBarColor, width: 3),
                    ),
                    padding: EdgeInsets.all(20),

                    child: Text(
                      '${result.toStringAsFixed(2)} ',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'KottaOne',
                        color: KAppBarColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            color: KAppBarColor,
            width: double.infinity.w,
            height: 67.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BMI range',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontFamily: 'KottaOne',
                  ),
                ),
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontFamily: 'KottaOne',
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey, thickness: 2),
          CustomContainerbim(
            text: 'less than 16',
            title: 'severely\n Underweight',
            condition: result < 16,
            activeColor: Colors.red,
          ),
          Divider(color: Colors.grey, thickness: 2),
          CustomContainerbim(
            activeColor: Colors.green,
            text: 'from 16 to\n 18.5',
            title: 'Underweight',
            condition: result >= 16 && result < 18.5,
          ),
          Divider(color: Colors.grey, thickness: 2),
          CustomContainerbim(
            activeColor: Colors.green,
            text: 'from 18.5 to\n 25',
            title: 'Normal',
            condition: result >= 18.5 && result < 25,
          ),
          Divider(color: Colors.grey, thickness: 2),
          CustomContainerbim(
            activeColor: Colors.blue,
            text: 'from 25 to\n 30',
            title: 'Overweight',

            condition: result >= 25 && result <= 30,
          ),
          Divider(color: Colors.grey),
          CustomContainerbim(
            activeColor: Colors.blue,
            text: 'More Than 30',
            title: 'Obese class I',

            condition: result > 30,
          ),
        ],
      ),
    );
  }
}
