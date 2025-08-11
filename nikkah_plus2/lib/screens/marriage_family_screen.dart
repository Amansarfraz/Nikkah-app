import 'package:flutter/material.dart';
import 'interests_personality_screen.dart';

class MarriageFamilyScreen extends StatefulWidget {
  const MarriageFamilyScreen({super.key});

  @override
  State<MarriageFamilyScreen> createState() => _MarriageFamilyScreenState();
}

class _MarriageFamilyScreenState extends State<MarriageFamilyScreen> {
  String maritalStatus = 'Never Married';
  String haveChildren = 'No';
  String wantChildren = 'Yes';
  String willingToRelocate = 'No';

  final Color selectedColor = const Color(
    0xFFE9D9C9,
  ); // 💡 lighter beige for options
  final Color nextButtonColor = const Color(
    0xFFD5C3B5,
  ); // 🔸 darker beige for "Next"
  final Color unselectedBorderColor = Color(0xFFE0DAD3);
  final Color textColor = Color(0xFF6E4C3F);
  final double spacing = 16;

  Widget buildOption(
    String value,
    String groupValue,
    ValueChanged<String> onChanged,
  ) {
    final bool isSelected = value == groupValue;
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected ? selectedColor : unselectedBorderColor,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          value,
          style: TextStyle(
            fontSize: 15,
            color: isSelected ? Colors.white : textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF6F1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF6F1),
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Marriage & Family",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tell us about your marital status and family plans.*",
              style: TextStyle(fontSize: 16, color: Color(0xFFA58C77)),
            ),
            const SizedBox(height: 24),

            const Text("Marital status", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: buildOption(
                      'Never Married',
                      maritalStatus,
                      (val) => setState(() => maritalStatus = val),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: buildOption(
                      'Divorced',
                      maritalStatus,
                      (val) => setState(() => maritalStatus = val),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: buildOption(
                      'Widowed',
                      maritalStatus,
                      (val) => setState(() => maritalStatus = val),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),
            const Text("Do you have children?", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: buildOption(
                      'Yes',
                      haveChildren,
                      (val) => setState(() => haveChildren = val),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: buildOption(
                      'No',
                      haveChildren,
                      (val) => setState(() => haveChildren = val),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),
            const Text(
              "Do you want children in the future?",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: buildOption(
                      'Yes',
                      wantChildren,
                      (val) => setState(() => wantChildren = val),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: buildOption(
                      'No',
                      wantChildren,
                      (val) => setState(() => wantChildren = val),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),
            const Text(
              "Are you willing to relocate for marriage?",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: buildOption(
                      'Yes',
                      willingToRelocate,
                      (val) => setState(() => willingToRelocate = val),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: buildOption(
                      'No',
                      willingToRelocate,
                      (val) => setState(() => willingToRelocate = val),
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InterestsPersonalityScreen(),
                  ),
                ); // Navigate to next screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: nextButtonColor, // 🔸 Darker color for "Next"
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
