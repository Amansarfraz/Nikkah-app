import 'package:flutter/material.dart';
import 'birthdate_picker_screen.dart';

class UserInfoForm2 extends StatefulWidget {
  const UserInfoForm2({super.key});
  @override
  State<UserInfoForm2> createState() => _UserInfoForm2State();
}

class _UserInfoForm2State extends State<UserInfoForm2> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _nickNameController = TextEditingController();

  String? gender;

  bool get isFormValid =>
      _firstNameController.text.isNotEmpty &&
      _lastNameController.text.isNotEmpty &&
      gender != null;

  void _onNext() {
    if (_formKey.currentState!.validate()) {
      if (gender == null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Please select gender.")));
        return;
      }
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BirthdatePickerScreen()),
      );
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    _nickNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFFAF6F1);
    const selectedColor = Color(0xFFD5C3B5);

    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key: _formKey,
          onChanged: () => setState(() {}),
          child: ListView(
            children: [
              const SizedBox(height: 32),

              // 🔥 Final Top Row Fix (Arrow + Text in One Line)
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "Tell Us More About Yourself",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              const Text(
                "Add Your Full Name*",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              _buildTextField(_firstNameController, "First Name*", true),
              _buildTextField(_middleNameController, "Middle Name", false),
              _buildTextField(_lastNameController, "Last Name*", true),

              const SizedBox(height: 24),

              const Text(
                "Do you have any Nick Name?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              _buildTextField(_nickNameController, "Nick Name", false),

              const SizedBox(height: 24),

              const Text(
                "What’s your gender?*",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildGenderButton("Male", selectedColor),
                  _buildGenderButton("Female", selectedColor),
                ],
              ),

              const SizedBox(height: 48),

              Center(
                child: SizedBox(
                  width: 300, // ✅ WIDER BUTTON
                  height: 64,
                  child: ElevatedButton(
                    onPressed: isFormValid ? _onNext : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFormValid
                          ? selectedColor
                          : const Color(0xFFE8E1DA),
                      disabledBackgroundColor: const Color(0xFFE8E1DA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String hint,
    bool required,
  ) {
    final filled = controller.text.trim().isNotEmpty;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: filled
              ? const Icon(Icons.check, color: Colors.brown, size: 20)
              : null,
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
        validator: required
            ? (value) =>
                  value == null || value.trim().isEmpty ? 'Required' : null
            : null,
      ),
    );
  }

  Widget _buildGenderButton(String value, Color selectedColor) {
    final isSelected = gender == value;
    return GestureDetector(
      onTap: () {
        setState(() {
          gender = value;
        });
      },
      child: Container(
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.brown : Colors.grey.shade400,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
