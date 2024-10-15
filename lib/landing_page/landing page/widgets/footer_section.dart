import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Forgot Password Text
        
        // The PEER principle Text
        GestureDetector(
          onTap: () {
Navigator.pushNamed(context, '/principle');

            // Handle PEER principle click (add the relevant navigation or action)
          },
          child: const SizedBox(
            height: 64,
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
      ],
    );
  }
}
