import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // Make buttons take the full width
      children: [
        // Primary Button (e.g., Sign Up)
        ElevatedButton(
          onPressed: () {
            // Handle sign-up button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF127EFC), // Button background color
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
          ),
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.white, // Button text color
            ),
          ),
        ),
        const SizedBox(height: 24), // Spacing between buttons

        // Secondary Button (e.g., Log In)
        OutlinedButton(
          onPressed: () {
            // Handle log-in button press
          },
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            side: const BorderSide(
              color: Color(0xFF127EFC), // Border color
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
          ),
          child: const Text(
            'Log In',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF127EFC), // Text color
            ),
          ),
        ),
      ],
    );
  }
}
