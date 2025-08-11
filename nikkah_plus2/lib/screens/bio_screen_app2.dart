import 'package:flutter/material.dart';
import 'interests_personality_page.dart';

void main() => runApp(const BioScreenApp2());

class BioScreenApp2 extends StatelessWidget {
  const BioScreenApp2({super.key});

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
    final borderColor = const Color(0xFFB89F80);
    final buttonColor = const Color(0xFFB89F80);
    final bioText =
        "Amina, 29. Practicing Muslimah seeking a like minded partner for a blessed journey. I am passionate about my faith, family, and finding joy in the simple things. Whether it’s a quiet evening in or an adventure outdoors, I value connection and sincerity. Looking for a respectful, faith driven individual to share life’s blessings with.";

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
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        bioText,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.auto_fix_high,
                          size: 16,
                          color: Color(0xFFB89F80),
                        ),
                        label: const Text(
                          'AI Rephrase',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFB89F80),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          backgroundColor: Color(0xFFF5F2EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: buttonColor,
                  side: BorderSide(color: buttonColor, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 24,
                  ),
                  backgroundColor: const Color(0xFFF5F2EE),
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                child: const Text(
                  'Use AI to Enhance your Bio',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),

              // ✅ Darker "Next" Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InterestsPersonalityPage(),
                      ),
                    ); // Add your functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
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
