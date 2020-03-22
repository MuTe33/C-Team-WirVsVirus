import 'package:flutter/material.dart';
import 'package:wirvsvirus/locator.dart';
import 'package:wirvsvirus/views/onboarding_one_view.dart';


void main() {
    setupLocator();
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
      ),
      home: OnboardingOneView(),
    );
  }
}


