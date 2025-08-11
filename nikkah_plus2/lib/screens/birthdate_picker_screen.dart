import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'upload_photos_screen.dart';

class BirthdatePickerScreen extends StatefulWidget {
  const BirthdatePickerScreen({super.key});
  @override
  BirthdatePickerScreenState createState() => BirthdatePickerScreenState();
}

class BirthdatePickerScreenState extends State<BirthdatePickerScreen> {
  int selectedDay = 1;
  String selectedMonth = 'January';
  int selectedYear = 2000;

  final List<int> days = List.generate(31, (i) => i + 1);
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final List<int> years = List.generate(70, (i) => 1955 + i);

  int get age {
    final birthDate = DateTime(
      selectedYear,
      months.indexOf(selectedMonth) + 1,
      selectedDay,
    );
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  bool get isDateValid =>
      selectedDay != 0 && selectedMonth.isNotEmpty && selectedYear != 0;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFFAF6F1);
    const selectedColor = Color(0xFFD5C3B5);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Text(
                "Tell Us More About Yourself",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add Your Birthdate*",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: _buildPicker(days, selectedDay, (value) {
                        setState(() {
                          selectedDay = value;
                        });
                      }),
                    ),
                    Expanded(
                      child: _buildPicker(months, selectedMonth, (value) {
                        setState(() {
                          selectedMonth = value;
                        });
                      }),
                    ),
                    Expanded(
                      child: _buildPicker(years, selectedYear, (value) {
                        setState(() {
                          selectedYear = value;
                        });
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "You are $age years old",
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: isDateValid
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadPhotosScreen(),
                          ),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDateValid
                      ? selectedColor
                      : const Color(0xFFE8E1DA),
                  disabledBackgroundColor: const Color(0xFFE8E1DA),
                  padding: const EdgeInsets.symmetric(vertical: 16),
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
      ),
    );
  }

  Widget _buildPicker<T>(
    List<T> items,
    T selectedItem,
    ValueChanged<T> onSelected,
  ) {
    return CupertinoPicker(
      scrollController: FixedExtentScrollController(
        initialItem: items.indexOf(selectedItem),
      ),
      itemExtent: 40,
      onSelectedItemChanged: (index) {
        onSelected(items[index]);
      },
      selectionOverlay: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFD5C3B5).withOpacity(0.4),
        ),
      ),
      children: items.map((item) {
        return Center(
          child: Text(item.toString(), style: const TextStyle(fontSize: 18)),
        );
      }).toList(),
    );
  }
}
