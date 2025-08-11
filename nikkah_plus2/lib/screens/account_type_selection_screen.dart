import 'package:flutter/material.dart';
import 'user_info_form.dart';

class AccountTypeSelectionScreen extends StatefulWidget {
  const AccountTypeSelectionScreen({super.key});

  @override
  State<AccountTypeSelectionScreen> createState() =>
      _AccountTypeSelectionScreenState();
}

class _AccountTypeSelectionScreenState
    extends State<AccountTypeSelectionScreen> {
  String selectedAccountType = "For Myself";
  String? selectedCity;

  final List<String> cities = [
    'Karachi, Pakistan',
    'Lahore, Pakistan',
    'Islamabad, Pakistan',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Welcome to Nikah Plus",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 14),

              const Text(
                "Let's create your profile to find your perfect match. This will take about 5 - 7 minutes.",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 32),

              const Text(
                "I am creating an account",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),

              buildOptionCard(
                label: "For Myself",
                subtitle: "I am looking for a spouse",
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 16),
              buildOptionCard(
                label: "As a Wali/Guardian",
                subtitle: "What's your gender?*",
                icon: Icons.group_outlined,
              ),
              const SizedBox(height: 16),
              buildOptionCard(
                label: "As a Mother",
                subtitle: "What's your gender?*",
                icon: Icons.lock_outline,
              ),

              const SizedBox(height: 38),

              const Text(
                "Where do you live?",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 14),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(border: InputBorder.none),
                  value: selectedCity,
                  hint: const Text(
                    "City, Country*",
                    style: TextStyle(fontSize: 16),
                  ),
                  items: cities.map((city) {
                    return DropdownMenuItem(
                      value: city,
                      child: Text(city, style: const TextStyle(fontSize: 16)),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCity = value;
                    });
                  },
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 60, // Increased height for button
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserInfoForm(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB89E82),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    elevation: 4,
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOptionCard({
    required String label,
    required String subtitle,
    required IconData icon,
  }) {
    final bool isSelected = selectedAccountType == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAccountType = label;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: isSelected ? const Color(0xFFF4EEE7) : Colors.white,
          border: Border.all(
            color: isSelected ? const Color(0xFFB89E82) : Colors.grey.shade300,
            width: 1.4,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: Color(0xFFB89E82).withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, size: 36, color: Colors.black87),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: Color(0xFFB89E82),
                size: 26,
              ),
          ],
        ),
      ),
    );
  }
}
