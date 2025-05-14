import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Setting_page.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({required this.text, super.key});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      backgroundColor: KAppBarColor,
      centerTitle: true,

      // الأيقونة اللي على الشمال
      leading: InkWell(
        splashColor: Color(KAppBarColor.value),
        borderRadius: BorderRadius.circular(50),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingPage()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu, color: Colors.white, size: 40),
        ),
      ),

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
        text!,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'KottaOne',
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
