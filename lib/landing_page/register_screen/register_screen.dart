import 'package:flutter/material.dart';
import 'logo_section.dart';
import 'input_section.dart';
import 'footer_section.dart';
import 'register_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF252525), // Background color
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 96.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoSection(height: 293, width: 103,), // The Peer logos
              SizedBox(height: 48), // Spacing between logo and inputs
              InputSection(), // Input fields
              SizedBox(height: 24), // Spacing between inputs and buttons
              RegisterButton(), // Register Button
              SizedBox(height: 16), // Spacing between button and footer
              FooterSection(), // The footer
            ],
          ),
        ),
      ),
    );
  }
}
