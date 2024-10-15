import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      width: 333,
      height: 120,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/PeerLogo_Color_RGB.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
