import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // The PEER principle Text
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/principle');
          },
          child: const SizedBox(
            height: 32,
            child: Text(
              'The PEER principle',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Color(0xFFFFFAFA), // Text color (white)
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),

        // Verify Account Text
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/verify');
          },
          child: const Text(
            'verify account',
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
