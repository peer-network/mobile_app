import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Forgot Password Text
        GestureDetector(
          onTap: () {
            // Handle Forgot Password click
            Navigator.pushNamed(context, '/forgot-password'); // Assuming the route exists
          },
          child: const Text(
            'Forgot password',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xFFFFFAFA), // Text color (white)
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 16), // Spacing between footer items

        // The PEER principle Text
        GestureDetector(
          onTap: () {
            // Handle PEER principle click (add the relevant navigation or action)
          },
          child: const Text(
            'The PEER principle',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xFFFFFAFA), // Text color (white)
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
