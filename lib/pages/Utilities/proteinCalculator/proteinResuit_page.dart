import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class ProteinresuitPage extends StatelessWidget {
  final double result; // ✅ عرّف المتغير هنا

  const ProteinresuitPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      appBar: CustomAppbar(text: 'protein result'),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            border: Border.all(color: KAppBarColor, width: 3),
          ),
          padding: EdgeInsets.all(20),

          margin: EdgeInsets.all(20),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Required Water per day',
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
                  '${result.toStringAsFixed(2)} Liters',
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
    );
  }
}
