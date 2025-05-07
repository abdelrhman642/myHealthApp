import 'package:flutter/material.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
         mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context, MyProfile());
                },
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
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'First Name',
                          style: TextStyle(
                            color: Color(0xffB2AEAE),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Last Name',
                          style: TextStyle(
                            color: Color(0xffB2AEAE),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Yousef',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'sophy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
      
                    Divider(indent: 20, endIndent: 20, color: Colors.white),
                    Column(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Color(0xffB2AEAE),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'yousef.mostafa598@gmail.com ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(indent: 20, endIndent: 20, color: Colors.white),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(
                            color: Color(0xffB2AEAE),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Weight',
                          style: TextStyle(
                            color: Color(0xffB2AEAE),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '170cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '75kg',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          Spacer(),

        Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff009FF9),
                ),
      
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/image/Vector (3).png',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
