import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            // Handle forgot password
          },
          child: const Text('Forgot password'),
        ),
        const SizedBox(height: 8),
        const Text(
          'The PEER principle',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
