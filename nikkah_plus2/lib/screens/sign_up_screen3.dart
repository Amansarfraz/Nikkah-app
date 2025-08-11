import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class SignUpScreen3 extends StatefulWidget {
  const SignUpScreen3({super.key});

  @override
  State<SignUpScreen3> createState() => _SignUpScreen3State();
}

class _SignUpScreen3State extends State<SignUpScreen3> {
  bool agreedToTerms = true;
  final TextEditingController emailController = TextEditingController(
    text: "Amina123@gmail.com",
  );
  final TextEditingController nameController = TextEditingController(
    text: "Amina Ali",
  );
  final TextEditingController passwordController = TextEditingController(
    text: "**********",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: SingleChildScrollView(
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
                    'assets/images/logo.png', // Replace with actual image path
                    width: 80,
                    height: 80,
                  ),
                ),
                const SizedBox(height: 30),

                const Center(
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'Sign up with Social or fill the form to continue.',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),

                // Input Fields
                _buildInputField(
                  controller: emailController,
                  icon: Icons.email_outlined,
                  hint: 'Email',
                ),
                const SizedBox(height: 16),
                _buildInputField(
                  controller: nameController,
                  icon: Icons.person_outline,
                  hint: 'Name',
                ),
                const SizedBox(height: 16),
                _buildInputField(
                  controller: passwordController,
                  icon: Icons.lock_outline,
                  hint: 'Password',
                  obscure: true,
                ),
                const SizedBox(height: 6),
                const Text(
                  'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 16),

                // Checkbox Terms
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: agreedToTerms,
                      onChanged: (value) {
                        setState(() {
                          agreedToTerms = value!;
                        });
                      },
                      activeColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'By Signing up, you agree to the ',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                          children: [
                            TextSpan(
                              text: 'Terms of Service ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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

                // Create Account Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: agreedToTerms
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WelcomeScreen(),
                              ),
                            );
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB89E82),
                      disabledBackgroundColor: Colors.brown.shade200,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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
                            builder: (context) => const WelcomeScreen(),
                          ),
                        );
                        // TODO: Navigator.push to SignIn screen
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
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required IconData icon,
    required String hint,
    bool obscure = false,
  }) {
    return TextField(
      controller: controller,
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
