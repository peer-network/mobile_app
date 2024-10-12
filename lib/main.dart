import 'package:flutter/material.dart';
import 'landing_page/landing_page.dart'; // Import the landing page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(), // Set the LandingPage as the home screen
    );
  }
}
