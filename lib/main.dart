import 'package:calculus/constants.dart';
import 'package:flutter/material.dart';

import 'screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculus',
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white),
      home: const OnboardingScreen(),
    );
  }
}
