import 'package:flutter/material.dart';
import 'logo_section.dart';
import 'input_section.dart';
import 'footer_section.dart';
import 'register_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525), // Background color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 96.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LogoSection(), // The Peer logos
              const SizedBox(height: 48), // Spacing between logo and inputs
              const InputSection(), // Input fields
              const SizedBox(height: 24), // Spacing between inputs and buttons
              const RegisterButton(), // Register Button
              const SizedBox(height: 16), // Spacing between button and footer
              const FooterSection(), // The footer
            ],
          ),
        ),
      ),
    );
  }
}
