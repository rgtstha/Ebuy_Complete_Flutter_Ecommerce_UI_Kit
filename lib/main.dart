import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/onboarding_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebuy',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
