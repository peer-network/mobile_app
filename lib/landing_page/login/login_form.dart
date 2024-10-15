import 'package:flutter/material.dart';
import 'login_service.dart';  // For handling login API mutation

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      final result = await login(
        email: _emailController.text,
        password: _passwordController.text,
      );

      if (result['status'] == 'success') {
        Navigator.pushNamed(context, '/newsfeed');
      } else {
        // Handle error (e.g., show error message)
        print(result['errorMessage']);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        width: 393,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Email input
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF2E2E2E),  // Background color of input
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF127EFC), width: 2), // Border color and width
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Email or Username',
                    labelStyle: TextStyle(color: Color(0xFFBABABA)),  // Text color
                  ),
                  style: const TextStyle(color: Colors.white),  // Input text color
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email or username';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Password input
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF2E2E2E),  // Background color of input
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF127EFC), width: 2),  // Border color and width
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFFBABABA)),  // Text color
                  ),
                  style: const TextStyle(color: Colors.white),  // Input text color
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Login Button
              ElevatedButton(
                onPressed: _handleLogin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF127EFC),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),  // Rounded corners
                  ),
                  minimumSize: const Size(345, 40),  // Button size
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
