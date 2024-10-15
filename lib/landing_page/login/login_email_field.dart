import 'package:flutter/material.dart';

class LoginEmailField extends StatelessWidget {
  final TextEditingController emailController;

  const LoginEmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF2E2E2E),
        labelText: 'Email or Username',
        labelStyle: const TextStyle(color: Color(0xFFBABABA)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFF127EFC)),
        ),
      ),
      style: const TextStyle(color: Colors.white),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email or username';
        }
        return null;
      },
    );
  }
}
