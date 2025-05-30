import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';
import 'package:health_app/pages/register_screen.dart';
import 'package:health_app/widgets/custom_bottom.dart';
import 'package:health_app/widgets/custom_textfild.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      }

                      final emailRegex = RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      );
                      if (!emailRegex.hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }

                      return null;
                    },
                    obscureText: false,
                    hintText: "Email Address",
                    prefixIcon: Icons.email,
                    colorsIcon: Color(0xff000C7B),
                  ),
                  SizedBox(height: 6),
                  CustomTextfild(
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    hintText: "Enter Your Password",
                    prefixIcon: Icons.lock,
                    colorsIcon: Color(0xff000C7B),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBottom(
                        onTap: () {},
                        fontSize: 15,
                        textColor: Colors.white,
                        title: "forgot password",
                        colorsIcon: Color(0xff9f9c9c9c).withOpacity(0.61),
                      ),
                      SizedBox(width: 30),
                      CustomBottom(
                        fontSize: 20,

                        textColor: Colors.white,
                        onTap: () async {
                          print("32423432");
                          // if (_formKey.currentState!.validate()) {
                          final res = await Dio().post(
                            'https://fujijapanelevators.com/api/auth/login',
                            data: {
                              'phone': _emailController.text,
                              'password': _passwordController.text,
                            },
                          );
                          print(res.data);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                          // }
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
                      InkWell(
                        splashColor: Color(0xffEEA47F),
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterWidget(),
                            ),
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
            ],
          ),
        ),
      ),
    );
  }
}
