import 'package:flutter/material.dart';

class LoginPasswordField extends StatelessWidget {
  final TextEditingController passwordController;

  const LoginPasswordField({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF2E2E2E),
        labelText: 'Password',
        labelStyle: const TextStyle(color: Color(0xFFBABABA)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFF127EFC)),
        ),
      ),
      style: const TextStyle(color: Colors.white),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
    );
  }
}
