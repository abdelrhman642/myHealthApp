import 'package:flutter/material.dart';

class customArticle extends StatelessWidget {
  customArticle({
    required this.textcolor,
    required this.containerimage,
    required this.containerText,
    required this.maincontainerText,
    super.key,
  });
  final String? maincontainerText;
  final String? containerText;
  final String? containerimage;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                maincontainerText!,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: textcolor!,
                ),
              ),
              SizedBox(height: 30),
              Text(
                containerText!,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(height: 30),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(containerimage!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
