import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/my_profile_screen.dart';

class CustomContainerdiet extends StatelessWidget {
  const CustomContainerdiet({
    super.key,
    required this.name,
    required this.title,
    required this.value1,
    required this.value2,
    required this.value3,
     required this.onTap, 
  });
  final String name;
  final String title;
  final String value1;
  final String value2;
  final String value3;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      splashColor: Color(KAppBarColor.value),
      borderRadius: BorderRadius.circular(25),
      
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 25, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  name!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff990011),
                      fontSize: 25,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 60,
                    color: Colors.grey.withOpacity(0.70),
                  ),
                ],
              ),

              ////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'carb: ',
                        style: TextStyle(fontSize: 20, fontFamily: 'KottaOne'),
                      ),
                      Text(
                        value1!,
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
                        style: TextStyle(fontSize: 20, fontFamily: 'KottaOne'),
                      ),
                      Text(
                        value2!,
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
                        'protein: ',
                        style: TextStyle(fontSize: 20, fontFamily: 'KottaOne'),
                      ),
                      Text(
                        value3!,
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
        ),
      ),
    );
  }
}
