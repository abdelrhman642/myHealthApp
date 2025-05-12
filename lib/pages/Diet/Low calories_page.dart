import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class LowCalories extends StatelessWidget {
  const LowCalories({super.key});

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
          'Low calories diet',
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      height: 100,
                      width: 100,
                      'assets/image/image copy 9.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Oatmeal pancake',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'protein: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KottaOne',
                                ),
                              ),
                              Text(
                                '14g',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KottaOne',
                                  color: Color(0xff990011),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Fats: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KottaOne',
                                ),
                              ),
                              Text(
                                '20g',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KottaOne',
                                  color: Color(0xff990011),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'carb: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KottaOne',
                                ),
                              ),
                              Text(
                                '28g',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KottaOne',
                                  color: Color(0xff990011),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
