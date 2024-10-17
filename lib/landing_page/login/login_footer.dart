import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            // Navigate to the principle page
            Navigator.pushNamed(context, '/forgot');
          },
          child: const Text('Forgot password'),
        ),
        TextButton(

onPressed: () {
            // Navigate to the principle page
            Navigator.pushNamed(context, '/principle');
          },
           
        child: const Text(
          'The PEER principle',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        ),
      ],
    );
  }
}
