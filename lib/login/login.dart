import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525), // Background color
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 96.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Peer Logo Section
              Column(
                children: [
                  
                  const SizedBox(height: 8),
                  Image.asset(
                    'PeerLogo_Color_RGB.png', // Replace with actual logo path
                    width: 333.59,
                    height: 333,
                  ),
                ],
              ),
              const SizedBox(height: 238), // Space between logo and inputs
              // Input Section
              Column(
                children: [
                  // Email Input
                  _buildInputField("Email"),
                  const SizedBox(height: 24),
                  // Password Input
                  _buildInputField("Password", isPassword: true),
                ],
              ),
              const SizedBox(height: 24),
              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  backgroundColor: const Color(0xFF127EFC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Footer Section (Forgot Password and Register)
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle forgot password
                    },
                    child: const Text(
                      'Forgot password',
                      style: TextStyle(
                        color: Color(0xFFFFFAFA),
                        fontFamily: 'Inter',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      // Handle register action
                    },
                    child: const Text(
                      'The PEER principle',
                      style: TextStyle(
                        color: Color(0xFFFFFAFA),
                        fontFamily: 'Inter',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // A helper function to build input fields
  Widget _buildInputField(String label, {bool isPassword = false}) {
    return Container(
      width: 345,
      decoration: BoxDecoration(
        color: const Color(0xFF2E2E2E),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF127EFC), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: label,
            hintStyle: const TextStyle(
              color: Color(0xFFBABABA),
              fontFamily: 'Inter',
              fontSize: 14,
            ),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
