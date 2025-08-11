import 'package:flutter/material.dart';
import 'education_career_screen.dart';

class ReligiousBackgroundScreen extends StatefulWidget {
  const ReligiousBackgroundScreen({super.key});

  @override
  State<ReligiousBackgroundScreen> createState() =>
      _ReligiousBackgroundScreenState();
}

class _ReligiousBackgroundScreenState extends State<ReligiousBackgroundScreen> {
  String? selectedReligiosity;
  String? selectedPrayerLevel;

  final List<String> religiosityOptions = [
    'Very practicing',
    'Moderately Practicing',
    'Somewhat practicing',
    'Not very practising',
    'Cultural connection only',
  ];

  final List<String> prayerOptions = [
    'Five times daily',
    'Most prayers daily',
    'Friday prayers only',
    'Occasionally',
    'Rarely/Never',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF6F1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF6F1),
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Religious Background',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text(
              'Tell us about your religious practices to help\nfind compatible matches.*',
              style: TextStyle(color: Colors.brown, fontSize: 13),
            ),
            const SizedBox(height: 24),

            const Text(
              'How Religious Are You?*',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildDropdown(religiosityOptions, selectedReligiosity, (value) {
              setState(() {
                selectedReligiosity = value;
              });
            }),

            const SizedBox(height: 24),
            const Text(
              'Prayer Level?*',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildDropdown(prayerOptions, selectedPrayerLevel, (value) {
              setState(() {
                selectedPrayerLevel = value;
              });
            }),

            const SizedBox(height: 24),
            const Text(
              'Madhab/School of thoughts',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300),
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'City, Country*',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EducationCareerScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD5C3B5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(
    List<String> items,
    String? selectedValue,
    ValueChanged<String?> onChanged,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFE8E1DA),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        hint: const Text('Select'),
        underline: const SizedBox(),
        isExpanded: true,
        icon: const Icon(Icons.check, color: Colors.brown),
        style: const TextStyle(color: Colors.black),
        dropdownColor: Colors.white,
        onChanged: onChanged,
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: const TextStyle(fontSize: 14)),
          );
        }).toList(),
      ),
    );
  }
}
