import 'package:flutter/material.dart';
import 'bio_screen_app2.dart';

void main() => runApp(const BioScreenApp());

class BioScreenApp extends StatelessWidget {
  const BioScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioScreen(),
    );
  }
}

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFFFCF9F6);
    final borderColor = const Color(0xFFB89F80); // Slightly darker border
    final buttonColor = const Color(0xFFB89F80); // Base color for buttons
    final aiButtonColor = const Color(0xFFB89F80); // AI button color

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Tell Us More About Yourself',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Add your Bio',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 160,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor, width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: const TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  decoration: InputDecoration.collapsed(
                    hintText:
                        'Tell us about yourself, your hobbies and future plans.....',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BioScreenApp2(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: aiButtonColor,
                    side: BorderSide(color: aiButtonColor, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 24,
                    ),
                  ),
                  child: const Text(
                    'Use AI to Enhance your Bio',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Spacer(),

              // ✅ Next Button with Lighter Color
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: null, // Still disabled
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      buttonColor.withOpacity(0.5), // Light color
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 20),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
