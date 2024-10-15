import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Forgot Password Link
        GestureDetector(
          onTap: () {
            // Navigate to Forgot Password page
            Navigator.pushNamed(context, '/forgot'); // Ensure this route exists
          },
          child: const Text(
            'Forgot password?',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xFFFFFAFA), // White text
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 16), // Spacing between footer items

        // The PEER Principle Link
        GestureDetector(
          onTap: () {
            // Handle PEER Principle action
            // You can navigate or show a modal with more information
          },
          child: const Text(
            'The PEER principle',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xFFFFFAFA), // White text
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

         const SizedBox(height: 16),

         
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/landing'); // Ensure this route exists
          },
        
          child: const Text(
            'back to landing page',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xFFFFFAFA), // White text
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        
      ],
      
    );
  }
}
