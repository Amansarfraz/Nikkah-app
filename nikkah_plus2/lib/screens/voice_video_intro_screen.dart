import 'package:flutter/material.dart';
import 'video_intro_app.dart'; // Make sure this file contains `VideoIntroApp` class

class VoiceVideoIntroScreen extends StatefulWidget {
  const VoiceVideoIntroScreen({super.key});

  @override
  State<VoiceVideoIntroScreen> createState() => _VoiceVideoIntroScreenState();
}

class _VoiceVideoIntroScreenState extends State<VoiceVideoIntroScreen> {
  String? selectedPrompt;

  final Color backgroundColor = Color(0xFFFAF6F1);
  final Color borderColor = Color(0xFFD8CFC3);
  final Color brownText = Color(0xFFA58C77);
  final Color buttonColor = Color(0xFFD4B89B);
  final Color optionalGreen = Color(0xFF4CAF50);

  final List<String> prompts = [
    'What makes you happy?',
    'Describe your perfect day.',
    'What are you passionate about?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Voice & Video Introduction",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add a personal touch to your profile with a voice or video introduction. This helps build trust and emotional connection.",
              style: TextStyle(fontSize: 16.2, color: Color(0xFFA58C77)),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: optionalGreen.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Optional",
                style: TextStyle(
                  color: optionalGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF9F3ED),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Voice Introduction",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "A 30 Second Voice introduction helps potential matches connect with your personality.",
                    style: TextStyle(fontSize: 13.5, color: Color(0xFFA58C77)),
                  ),
                  const SizedBox(height: 20),

                  // Heading above dropdown
                  const Text(
                    "Choose a prompt to answer:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),

                  // Dropdown
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: borderColor),
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Text("Select a prompt"),
                        value: selectedPrompt,
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            selectedPrompt = value;
                          });
                        },
                        items: prompts.map((prompt) {
                          return DropdownMenuItem(
                            value: prompt,
                            child: Text(prompt),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Centered Record Voice Intro button
                  Center(
                    child: SizedBox(
                      height: 42,
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          side: BorderSide(color: borderColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        icon: const Icon(
                          Icons.mic,
                          size: 18,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Record Voice Intro",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          // Your recording logic here
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Skip button above Next button
            Column(
              children: [
                // Skip button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: OutlinedButton(
                    onPressed: () {
                      // Add skip logic
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: borderColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Next button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoIntroApp(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
