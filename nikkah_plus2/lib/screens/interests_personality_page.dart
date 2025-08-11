import 'package:flutter/material.dart';
import 'home_screen.dart';

class InterestsPersonalityPage extends StatefulWidget {
  const InterestsPersonalityPage({super.key});

  @override
  _InterestsPersonalityPageState createState() =>
      _InterestsPersonalityPageState();
}

class _InterestsPersonalityPageState extends State<InterestsPersonalityPage> {
  RangeValues _ageRange = RangeValues(29, 36);

  final List<String> ethnicityOptions = [
    "African",
    "Arab",
    "European",
    "North American",
    "Persian/Iranian",
    "South Asian",
    "Southeast Asian",
    "Turkish",
    "Any",
  ];

  Map<String, bool> selectedEthnicities = {};

  String locationPreference = 'Anywhere in the world';
  String educationLevel = 'No preference';

  @override
  void initState() {
    super.initState();
    for (var eth in ethnicityOptions) {
      selectedEthnicities[eth] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3ED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 4, height: 20, color: Color(0xFFC7A17A)),
                    SizedBox(width: 8),
                    Text(
                      'Interests & Personality',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5C4433),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  "Tell us what you're looking for in a potential spouse.",
                  style: TextStyle(fontSize: 13, color: Color(0xFF5C4433)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),

                /// Age Range
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Preferred Age Range",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "${_ageRange.start.toInt()}",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("years", style: TextStyle(fontSize: 11)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "${_ageRange.end.toInt()}",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("years", style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ],
                ),
                RangeSlider(
                  values: _ageRange,
                  min: 18,
                  max: 60,
                  activeColor: Color(0xFFC7A17A),
                  inactiveColor: Color(0xFFE2DAD2),
                  onChanged: (values) {
                    setState(() {
                      _ageRange = values;
                    });
                  },
                ),
                SizedBox(height: 16),

                /// Ethnicity in 2 rows
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Ethnicity Preferences",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 3.5,
                  children: ethnicityOptions.map((eth) {
                    return Row(
                      children: [
                        Checkbox(
                          value: selectedEthnicities[eth],
                          activeColor: Color(0xFFC7A17A),
                          onChanged: (val) {
                            setState(() {
                              selectedEthnicities[eth] = val!;
                            });
                          },
                        ),
                        Expanded(
                          child: Text(eth, style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                SizedBox(height: 16),

                /// Location Preference
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Location Preference",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                DropdownButtonFormField<String>(
                  value: locationPreference,
                  items: [
                    DropdownMenuItem(
                      child: Text("Anywhere in the world"),
                      value: "Anywhere in the world",
                    ),
                  ],
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    isDense: true,
                  ),
                ),
                SizedBox(height: 16),

                /// Education
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Minimum Education Level",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                DropdownButtonFormField<String>(
                  value: educationLevel,
                  items: [
                    DropdownMenuItem(
                      child: Text("No preference"),
                      value: "No preference",
                    ),
                  ],
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    isDense: true,
                  ),
                ),
                SizedBox(height: 24),

                /// Next Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC7A17A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 18),
                      elevation: 4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Find Matches",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
