import 'package:flutter/material.dart';
import 'package:health_app/pages/my_profile.dart';
import 'package:health_app/pages/register_widget.dart';
import 'package:health_app/widgets/custom_bottom.dart';
import 'package:health_app/widgets/custom_textfild.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Transform.scale(
              scale: 1.5,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Transform.scale(
              scale: 1.5,
              child: Text(
                "HERE",
                style: TextStyle(
                  color: Color(0xff000C7B),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 150),
            CustomTextfild(
              hintText: "Email Address",
              prefixIcon: Icons.email,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              hintText: "Enter Your Password",
              prefixIcon: Icons.lock,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(
                  title: "forgot password",
                  colorsIcon: Color(0xff9F9C9C9C).withOpacity(0.61),
                ),
                SizedBox(width: 30),
                CustomBottom(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfile()),
                    );
                  },
                  title: "Login",
                  colorsIcon: Color(0xff00D1FF),
                ),
              ],
            ),
            SizedBox(height: 30),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterWidget()),
                    );
                  },
                  child: Text(
                    'Register now -',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Spacer(flex: 4),
                Container(
                  child: Image.asset(
                    'assets/Vector (1).png',
                    width: 30,
                    height: 50,
                  ),
                ),
                SizedBox(width: 20),
                Container(child: Image.asset('assets/Vector.png')),
                Spacer(flex: 1),
              ],
            ),
            Divider(indent: 20, endIndent: 20, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
