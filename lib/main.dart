import 'package:alphabet/screens/alphabet_screen.dart';
import 'package:alphabet/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: appColor,
        splash: const Text(
          'ALPHABET',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        nextScreen: const WelcomeScreen(),
      ),
      routes: {
        AlphabetScreen.id: (context) => const AlphabetScreen(),
      },
    );
  }
}
