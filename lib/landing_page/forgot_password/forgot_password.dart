import 'package:flutter/material.dart';
import 'package:peer_app/landing_page/register_screen/logo_section.dart';

class ForgotPasswordErrorScreen extends StatelessWidget {
  const ForgotPasswordErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525), // Dark background color
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 96, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Peer Logos
            const Center(
              child: LogoSection(
                width: 393,
                height: 200,
              ), // Assuming this is a custom widget for the logo section
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 238), // Gap between elements

            // Input Section
            Column(
              children: [
                // Input Field 1
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: 345,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E2E2E),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF87A330),
                      width: 2,
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                        color: Color(0xFFBABABA),
                        fontSize: 14,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 24), // Gap between input fields

                // Input Field 2
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: 345,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E2E2E),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFFA31621),
                      width: 2,
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: Color(0xFFBABABA),
                        fontSize: 14,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24), // Gap before button

            // Button
            SizedBox(
              width: 345,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF127EFC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // Handle Forgot Password Error button click
                },
                child: const Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFAFA), // White text color
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Footer Section
            const Column(
              children: [
                Text(
                  "The PEER Principle",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFFFFAFA), // White text color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
