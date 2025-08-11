import 'package:flutter/material.dart';
import 'sign_up_screen2.dart';

class SignInScreen2 extends StatelessWidget {
  const SignInScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 10),

              // Logo
              Center(
                child: Image.asset(
                  'assets/images/logo.png', // Replace with your logo
                  width: 80,
                  height: 80,
                ),
              ),
              const SizedBox(height: 30),

              // Title
              const Center(
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Email Input
              _buildInputField(icon: Icons.email_outlined, hint: 'Email'),
              const SizedBox(height: 16),

              // Password Input
              _buildInputField(
                icon: Icons.lock_outline,
                hint: 'Password',
                obscure: true,
              ),
              const SizedBox(height: 8),

              // Remember Me Checkbox
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Text(
                    'Remember Me',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Social Login Text
              const Center(
                child: Text(
                  'Or Sign In Using Your Socials',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              const SizedBox(height: 16),

              // Social Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialIcon('assets/images/x.png'),
                  const SizedBox(width: 16),
                  _socialIcon('assets/images/fb.png'),
                  const SizedBox(width: 16),
                  _socialIcon('assets/images/apple.png'),
                ],
              ),
              const SizedBox(height: 30),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen2(),
                      ),
                    );
                    // Handle Sign In
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB89E82),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ALREADY HAVE AN ACCOUNT? ',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle sign in redirect
                    },
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                        color: Color(0xFFB89E82),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required IconData icon,
    required String hint,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.brown),
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }

  Widget _socialIcon(String path) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20,
      child: Image.asset(path, width: 20, height: 20),
    );
  }
}
