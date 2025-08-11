import 'package:flutter/material.dart';
import 'voice_video_intro_screen.dart';

class InterestsPersonalityScreen extends StatefulWidget {
  const InterestsPersonalityScreen({super.key});

  @override
  State<InterestsPersonalityScreen> createState() =>
      _InterestsPersonalityScreenState();
}

class _InterestsPersonalityScreenState
    extends State<InterestsPersonalityScreen> {
  final Set<String> selectedInterests1 = {};
  final Set<String> selectedInterests2 = {};

  final Color selectedColor = Color(0xFFD5C3B5); // light brown
  final Color unselectedBorderColor = Color(0xFFE0DAD3);
  final Color textColor = Color(0xFF6E4C3F);
  final Color nextButtonColor = Color(0xFFBFA583); // darker brown

  final List<String> interests1 = [
    'Reading',
    'Cooking',
    'Art',
    'Nature',
    'Volunteering',
    'Fitness',
    'Writing',
    'Family Activities',
    'Traveling',
    'Sports',
    'Music',
    'Technology',
    'Islamic Studies',
    'Photography',
    'Business',
    'Gym',
  ];

  final List<String> interests2 = [
    'Kind',
    'Ambitious',
    'Creative',
    'Outgoing',
    'Adventurous',
    'Humorous',
    'Spiritual',
    'Patient',
    'Organized',
    'Analytical',
    'Reserved',
    'Traditional',
  ];

  Widget buildCheckbox(String text, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: selected ? selectedColor : Colors.transparent,
              border: Border.all(
                color: selected ? selectedColor : unselectedBorderColor,
              ),
            ),
            child: selected
                ? Icon(Icons.check, size: 14, color: Colors.white)
                : null,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(text, style: TextStyle(fontSize: 14, color: textColor)),
          ),
        ],
      ),
    );
  }

  Widget buildCheckboxGrid(List<String> options, Set<String> selectedSet) {
    List<Widget> rows = [];
    for (int i = 0; i < options.length; i += 2) {
      rows.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: buildCheckbox(
                  options[i],
                  selectedSet.contains(options[i]),
                  () {
                    setState(() {
                      if (selectedSet.contains(options[i])) {
                        selectedSet.remove(options[i]);
                      } else if (selectedSet.length < 5) {
                        selectedSet.add(options[i]);
                      }
                    });
                  },
                ),
              ),
              SizedBox(width: 20),
              if (i + 1 < options.length)
                Expanded(
                  child: buildCheckbox(
                    options[i + 1],
                    selectedSet.contains(options[i + 1]),
                    () {
                      setState(() {
                        if (selectedSet.contains(options[i + 1])) {
                          selectedSet.remove(options[i + 1]);
                        } else if (selectedSet.length < 5) {
                          selectedSet.add(options[i + 1]);
                        }
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
      );
    }
    return Column(children: rows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAF6F1),
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: const Text(
          "Interests & Personality",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tell us about yourself to help find compatible matches.*",
              style: TextStyle(fontSize: 14, color: Color(0xFFA58C77)),
            ),
            SizedBox(height: 20),
            Text(
              "Select your interests (choose up to 5)",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 12),
            buildCheckboxGrid(interests1, selectedInterests1),
            SizedBox(height: 20),
            Text(
              "Select your interests (choose up to 5)",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 12),
            buildCheckboxGrid(interests2, selectedInterests2),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VoiceVideoIntroScreen(),
                  ),
                ); // Navigate to next screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: nextButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size.fromHeight(50),
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
