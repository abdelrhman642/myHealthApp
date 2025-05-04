import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff009FF9),
                ),
                child: Image.asset('assets/image/Vector (2).png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontFamily: 'Iceland',
                    fontSize: 50,
                    color: Color(0xffEBFF00),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  'assets/image/Ellipse 1.png',
                  fit: BoxFit.cover,
                  height: 100,
                ),
                Container(
                  height: 33,
                  width: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff009FF9),
                  ),
                  child: Image.asset('assets/image/🦆 icon _camera_.png'),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              

              margin: EdgeInsets.only(top: 23),
              decoration: BoxDecoration(
                color: Color(0xff6A6A6A).withOpacity(0.5),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                children: [
                
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
