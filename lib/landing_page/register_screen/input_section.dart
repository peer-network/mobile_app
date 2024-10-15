import 'package:flutter/material.dart';

class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Username Input
        _buildInputField(
          hintText: 'Username',
        ),
        const SizedBox(height: 24), // Spacing between input fields

        // Email Input
        _buildInputField(
          hintText: 'Email',
        ),
        const SizedBox(height: 24), // Spacing between input fields

        // Password Input
        _buildInputField(
          hintText: 'Password',
          isPassword: true,
        ),
        const SizedBox(height: 24), // Spacing between input fields

        // Confirm Password Input
        _buildInputField(
          hintText: 'Confirm Password',
          isPassword: true,
        ),
      ],
    );
  }

  // Helper method to build a reusable input field
  Widget _buildInputField({
    required String hintText,
    bool isPassword = false,
  }) {
    return Container(
      width: 345,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFF2E2E2E), // Dark background
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF127EFC), width: 2), // Blue border
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: TextField(
          obscureText: isPassword, // Hide text for password fields
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFFBABABA), // Light grey text
              fontFamily: 'Inter',
            ),
          ),
          style: const TextStyle(
            color: Colors.white, // Input text color
            fontFamily: 'Inter',
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
