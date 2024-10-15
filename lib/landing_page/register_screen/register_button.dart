import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345, // Full width for the button
      height: 40, // Height of the button
      child: ElevatedButton(
        onPressed: () {
          // Implement the registration logic here
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Register button pressed")),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF127EFC), // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
        child: const Text(
          'Register',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFFFFFAFA), // White text
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
