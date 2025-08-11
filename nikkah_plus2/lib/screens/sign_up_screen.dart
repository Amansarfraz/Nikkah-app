import 'package:flutter/material.dart';
import 'sign_in_screen2.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              // Back button
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
              const SizedBox(height: 20),

              // Title
              const Center(
                child: Text(
                  "Let’s Get Started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Subtitle
              const Center(
                child: Text(
                  "Sign up with Social or fill the form to continue.",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 24),

              // Email
              _buildInputField(icon: Icons.email_outlined, hint: 'Email'),
              const SizedBox(height: 16),

              // Name
              _buildInputField(icon: Icons.person_outline, hint: 'Name'),
              const SizedBox(height: 16),

              // Password
              _buildInputField(
                icon: Icons.lock_outline,
                hint: 'Password',
                obscure: true,
              ),

              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),

              // Terms
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'By Signing up, you agree to the ',
                        children: [
                          TextSpan(
                            text: 'Terms of Service ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          TextSpan(text: 'and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

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
              const SizedBox(height: 24),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen2()),
                    );
                    // Handle sign-up logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB89E82),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Create an account',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ALREADY HAVE AN ACCOUNT? ',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen2(),
                        ),
                      );

                      // Navigate to sign-in
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
