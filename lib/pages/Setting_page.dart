import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/login_screen.dart';
import 'package:health_app/widgets/custom_AppBar.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Who Are We',
                style: TextStyle(
                  fontFamily: 'KottaOne',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.grey, // أو أي لون تريده
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Divider(color: KAppBarColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Terms & Conditions',
                style: TextStyle(
                  fontFamily: 'KottaOne',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.grey, // أو أي لون تريده
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Divider(color: KAppBarColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontFamily: 'KottaOne',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.grey, // أو أي لون تريده
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Divider(color: KAppBarColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: TextStyle(
                  fontFamily: 'KottaOne',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.grey, // أو أي لون تريده
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Divider(color: KAppBarColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notification',
                style: TextStyle(
                  fontFamily: 'KottaOne',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.grey, // أو أي لون تريده
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Divider(color: KAppBarColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delete account',
                style: TextStyle(
                  fontFamily: 'KottaOne',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.chevron_right, size: 50, color: Colors.grey),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Divider(color: KAppBarColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                hoverColor: Colors.white,
                borderRadius: BorderRadius.circular(8),
                splashColor: KAppBarColor,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginWidget()),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'log out',
                    style: TextStyle(
                      fontFamily: 'KottaOne',
                      fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
