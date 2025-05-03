import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_app/pages/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  // Lock orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

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
