import 'package:flutter/material.dart';
import 'package:peer_app/forgot_password/forgot_password.dart';
import 'package:peer_app/register_screen/register_screen.dart';
import 'landing_page/landing page/landing_page.dart'; // Import the landing page

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
    routes: {
        '/register': (context) => const RegisterScreen(),
        '/landing': (context) => const LandingPage(),
        '/forgot': (context) => const ForgotPasswordErrorScreen(),
  }
    );
    
  }
}
