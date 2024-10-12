import 'package:flutter/material.dart';
import 'widgets/logo_section.dart'; // Import the logo section
import 'widgets/button_section.dart'; // Import the button section
import 'widgets/footer_section.dart'; // Import the footer section

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525), // Background color of the page
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(), // Add space at the top
              LogoSection(), // The logo section
              Spacer(flex: 2), // Add extra space between sections
              ButtonSection(), // The buttons section
              Spacer(), // Add space at the bottom
              FooterSection(), // The footer section
            ],
          ),
        ),
      ),
    );
  }
}
