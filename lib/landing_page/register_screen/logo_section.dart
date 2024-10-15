import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({Key? key, required int height, required int width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // The Peer Logo Signet
        
        const SizedBox(height: 8), // Spacing between the signet and the logo

        // The Peer Logos_new
        Container(
          width: 112.59,
          height: 38,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/PeerLogo_Color_RGB.png'), // Updated with Peer Logo asset
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
