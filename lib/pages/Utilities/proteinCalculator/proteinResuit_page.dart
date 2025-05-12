import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class ProteinresuitPage extends StatelessWidget {
  final double result; // ✅ عرّف المتغير هنا

  const ProteinresuitPage({super.key, required this.result});

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
          'Result protein',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'KottaOne',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
