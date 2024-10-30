import 'package:car_rent/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

var normalTheme = ThemeData();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Car Rent",
        debugShowCheckedModeBanner: false,
        // theme: ,
        home: SplashScreen());
  }
}
