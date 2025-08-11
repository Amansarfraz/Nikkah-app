import 'package:flutter/material.dart';
import 'marriage_family_screen.dart';

class EducationCareerScreen extends StatefulWidget {
  const EducationCareerScreen({super.key});

  @override
  State<EducationCareerScreen> createState() => _EducationCareerScreenState();
}

class _EducationCareerScreenState extends State<EducationCareerScreen> {
  String? selectedEducation;
  String? selectedProfession;
  String? selectedEthnicity;

  final List<String> educationOptions = [
    'High School',
    'Bachelors',
    'Masters',
    'PhD',
  ];

  final List<String> professionOptions = [
    'Engineer',
    'Doctor',
    'Teacher',
    'Artist',
    'Student',
  ];

  final List<String> ethnicityOptions = [
    'Asian',
    'Arab',
    'African',
    'Caucasian',
  ];

  final List<String> languages = [
    'Arabic',
    'Urdu',
    'Turkish',
    'Spanish',
    'English',
    'French',
    'Farsi',
    'Bengali',
  ];

  final Map<String, bool> selectedLanguages = {};

  @override
  void initState() {
    super.initState();
    for (var lang in languages) {
      selectedLanguages[lang] = false;
    }
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
          'Education & Career',
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
              'Tell us about your educational background\nand professional life.*',
              style: TextStyle(color: Colors.brown, fontSize: 13),
            ),
            const SizedBox(height: 24),

            const Text(
              'Education Level',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildDropdown(educationOptions, selectedEducation, (value) {
              setState(() {
                selectedEducation = value;
              });
            }),

            const SizedBox(height: 24),
            const Text(
              'Profession',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildDropdown(professionOptions, selectedProfession, (value) {
              setState(() {
                selectedProfession = value;
              });
            }),

            const SizedBox(height: 24),
            const Text(
              'Ethnicity',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildDropdown(ethnicityOptions, selectedEthnicity, (value) {
              setState(() {
                selectedEthnicity = value;
              });
            }),

            const SizedBox(height: 24),
            const Text(
              'Languages you know',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildLanguageCheckboxes(),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MarriageFamilyScreen(),
                    ),
                  ); // handle next
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        hint: const Text('Select an option'),
        underline: const SizedBox(),
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down),
        style: const TextStyle(color: Colors.black, fontSize: 14),
        onChanged: onChanged,
        items: items.map((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
      ),
    );
  }

  Widget _buildLanguageCheckboxes() {
    return Wrap(
      spacing: 10,
      runSpacing: 0,
      children: languages.map((language) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2 - 30,
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            visualDensity: VisualDensity.compact,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(language, style: const TextStyle(fontSize: 14)),
            value: selectedLanguages[language],
            onChanged: (bool? value) {
              setState(() {
                selectedLanguages[language] = value!;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
