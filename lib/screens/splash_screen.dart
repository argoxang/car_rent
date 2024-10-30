import 'package:flutter/material.dart';
import 'package:car_rent/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
                width: MediaQuery.sizeOf(context).width * 1.5,
                left: 30,
                bottom: MediaQuery.sizeOf(context).width / 2,
                child: Image.asset(
                  'assets/lexus_black.png',
                  fit: BoxFit.fitWidth,
                )),
            Positioned(
              height: MediaQuery.sizeOf(context).height,
              top: 0,
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Icon(
                      Icons.settings_input_component_sharp,
                      color: Colors.red,
                      size: 80,
                    ),
                    SizedBox(height: 6),
                    Text(
                      'A+ Rent',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          "Discover the world on wheels with our car rental service",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 50,
                child: SizedBox(
                  width: 150,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Let's go!",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
