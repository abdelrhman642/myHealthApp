import 'package:flutter/material.dart';
import 'package:health_app/pages/login_screen.dart';
import 'package:health_app/widgets/custom_bottom.dart';
import 'package:health_app/widgets/custom_textfild.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Rectangle 1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 450),
            CustomTextfild(
              obscureText: false,
              hintText: 'Name',
              prefixIcon: Icons.person,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              obscureText: false,
              hintText: 'Email',
              prefixIcon: Icons.email,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              obscureText: true,
              hintText: 'Password',
              prefixIcon: Icons.key,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              obscureText: true,
              hintText: 'Confirm Password',
              prefixIcon: Icons.key,
              colorsIcon: Color(0xff000C7B),
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(
                  fontSize: 20,
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pop(context, LoginWidget());
                  },
                  title: "cancel",
                  colorsIcon: Color(0xff9f9c9c9c).withOpacity(0.61),
                ),
                SizedBox(width: 30),
                CustomBottom(
                  onTap: () {},
                  fontSize: 20,
                  textColor: Colors.white,
                  title: "Proceed",
                  colorsIcon: Color(0xff00D1FF),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
