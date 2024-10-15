import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controllers for text fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Key to validate form
  final _formKey = GlobalKey<FormState>();

  // To handle login action
  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      // Perform login action
      // You can call an API or navigate to another page
      print('Email: ${_emailController.text}, Password: ${_passwordController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    
                  ),
                  // Email input
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF2E2E2E),
                      labelText: 'Email or Username',
                      labelStyle: TextStyle(color: Color(0xFFBABABA)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xFF127EFC)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email or username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  // Password input
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF2E2E2E),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0xFFBABABA)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xFF127EFC)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  // Login Button
                  ElevatedButton(
                    onPressed: _handleLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF127EFC),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Forgot Password
                  TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Footer Text (The PEER Principle)
                  Text(
                    'The PEER principle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
