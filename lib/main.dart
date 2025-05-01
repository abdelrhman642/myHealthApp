import 'package:flutter/material.dart';
import 'package:health_app/widgets/home_widget.dart';

void main() {
  runApp(MyApp()); // This runs your Flutter app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(), // The home page of the app
    );
  }
}
