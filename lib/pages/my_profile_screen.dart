import 'package:flutter/material.dart';
import 'package:health_app/widgets/custom_bottom.dart';
import 'package:health_app/widgets/custom_text_myprofile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/myprofile_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150, left: 30),
            child: Text(
              "My Profile",
              style: TextStyle(
                fontFamily: 'Iceland',
                fontSize: 85,
                fontWeight: FontWeight.bold,
                color: Color(0xff8E7269),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,

                  margin: EdgeInsets.only(top: 350),
                  decoration: BoxDecoration(
                    color: Color(0xff6A6A6A).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: Image.asset(
                            'assets/image/icon _edit pencil_.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Text(
                        'Yousef Sophy',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'yousef.mostafa598@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffB2AEAE),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 16,
                        ),
                        child: Column(
                          spacing: 9,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextMyprofile(title: "Age", value: "23"),

                                CustomTextMyprofile(
                                  title: "ID",
                                  value: "1501452",
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextMyprofile(
                                  title: "Height",
                                  value: "170cm",
                                ),

                                CustomTextMyprofile(
                                  title: "Weight",
                                  value: "75kg",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomBottom(
                  colorsIcon: Color(0xff4F4E4E).withOpacity(0.71),
                  title: "Home",
                ),
              ],
            ),
          ),

          Positioned(
            top: height / 2 - 180,
            right: width / 2 - 50,
            child: CircleAvatar(
              radius: 50,
              child: Image.asset('assets/image/Ellipse 1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
