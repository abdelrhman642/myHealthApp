import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:health_app/pages/login_screen.dart';
import 'package:health_app/widgets/custom_bottom.dart';
import 'package:health_app/widgets/custom_textfild.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
              controller: _nameController,

              prefixIcon: Icons.person,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              obscureText: false,
              hintText: 'Email',
              controller: _emailController,
              prefixIcon: Icons.email,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              obscureText: true,
              hintText: 'Password',
              controller: _passwordController,
              prefixIcon: Icons.key,
              colorsIcon: Color(0xff000C7B),
            ),
            SizedBox(height: 6),
            CustomTextfild(
              obscureText: true,
              hintText: 'Confirm Password',
              prefixIcon: Icons.key,
              controller: _confirmPasswordController,
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
                  onTap: () async {
                    try {
                      final response = await Dio().post(
                        'https://fujijapanelevators.com/api/auth/register',
                        data: {
                          "name": _nameController.text,
                          "password": _passwordController.text,
                          "phone": _emailController.text,
                        },
                      );
                      print(response.data);
                    } on DioException catch (e) {
                      print(e.response?.data);
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: Text(e.response?.data['message']??''),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentMaterialBanner();
                              },
                            ),

                          ],
                        ),
                      );
                    }
                  },
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
