import 'package:flutter/material.dart';
import 'user_info_form2.dart';

class UserInfoForm extends StatefulWidget {
  const UserInfoForm({super.key});

  @override
  State<UserInfoForm> createState() => _UserInfoFormState();
}

class _UserInfoFormState extends State<UserInfoForm> {
  final _formKey = GlobalKey<FormState>();

  String? firstName;
  String? middleName;
  String? lastName;
  String? nickName;
  String? gender;

  bool get isFormValid =>
      (firstName != null && firstName!.trim().isNotEmpty) &&
      (lastName != null && lastName!.trim().isNotEmpty);

  void _onGenderSelected(String value) {
    setState(() {
      gender = value;
    });

    if (value == "Female") {
      // Bypass form validation and go to next screen after 2 seconds
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UserInfoForm2()),
        );
      });
    } else {
      // For Male, require first and last name
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();

        Future.delayed(const Duration(seconds: 2), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UserInfoForm2()),
          );
        });
      }
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
          "Tell Us More About Yourself",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          onChanged: () => setState(() {}),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const Text(
                "Add Your Full Name*",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              _buildTextField(
                "First Name*",
                (value) => firstName = value,
                required: true,
              ),
              _buildTextField("Middle Name", (value) => middleName = value),
              _buildTextField(
                "Last Name*",
                (value) => lastName = value,
                required: true,
              ),
              const SizedBox(height: 20),
              const Text(
                "Do you have any Nick Name?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              _buildTextField("Nick Name", (value) => nickName = value),
              const SizedBox(height: 16),
              const Text(
                "What’s your gender?*",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildGenderButton("Male"),
                  const SizedBox(width: 12),
                  _buildGenderButton("Female"),
                ],
              ),
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 260,
                  height: 70,
                  child: ElevatedButton(
                    onPressed:
                        null, // Disabled since navigation is on gender tap
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE8E1DA),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      elevation: 4,
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String hint,
    Function(String) onSaved, {
    bool required = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 60,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 15),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
          validator: (value) {
            if (required &&
                gender == "Male" &&
                (value == null || value.trim().isEmpty)) {
              return 'Required';
            }
            return null;
          },
          onSaved: (value) => onSaved(value ?? ''),
        ),
      ),
    );
  }

  Widget _buildGenderButton(String value) {
    final isSelected = gender == value;
    return Expanded(
      child: GestureDetector(
        onTap: () => _onGenderSelected(value),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFFF0E7DE) : Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: isSelected ? Colors.black87 : Colors.grey.shade400,
              width: 1.3,
            ),
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.black : Colors.grey.shade800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
