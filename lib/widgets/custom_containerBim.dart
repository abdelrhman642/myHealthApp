import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerbim extends StatelessWidget {
  const CustomContainerbim({
    super.key,
    required this.text,
    required this.title,
    required this.condition,
        required this.activeColor,
  });
  final String text;
  final String title;
  final bool condition;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      color: condition ? activeColor : Colors.white,
      width: double.infinity.w,
      height: 67.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontFamily: 'KottaOne',
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontFamily: 'KottaOne',
            ),
          ),
        ],
      ),
    );
  }
}
