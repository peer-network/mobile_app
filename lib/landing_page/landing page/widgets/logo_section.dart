import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // The Peer Logo Signet
        Container(
          width: 393,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/PeerLogo_Color_RGB.png'), // Add your logo here
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 0), // Add some spacing between the signet and the logo
      ],
    );
  }
}
