import 'package:flutter/material.dart';
import 'firasa_insight1_screen.dart';

void main() => runApp(const NikkahNavigator3());

class NikkahNavigator3 extends StatelessWidget {
  const NikkahNavigator3({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color brown = Color(0xFFb78b63);
  static const Color darkBrown = Color(0xFF7f4f33);
  static const Color greenCircle = Color(0xFF2FB14A);
  static const Color greyButton = Color(0xFFDDDDDD);
  static const Color blueCircle = Color(0xFF3A86FF);
  static const Color orangeCircle = Color(0xFFFF9F1C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        title: const Text(
          "Nikkah Navigator",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 Search bar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBF6F1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE9E0D5)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.search,
                            color: Colors.brown,
                            size: 22,
                          ),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: Text(
                              'Search by name, location, profession...',
                              style: TextStyle(color: Colors.brown),
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 72,
                            decoration: BoxDecoration(
                              color: darkBrown,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Filter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Recently Viewed + Saved Profile row
              Row(
                children: const [
                  Text(
                    "Recently Viewed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Saved Profile",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255, 150, 84, 22),
                      decorationThickness: 3,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // White box with heart + text + button
              Container(
                width: 362,
                height: 285,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(255, 170, 13, 2),
                      size: 48,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "No saved profiles yet...",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "When you find someone interesting, save their..",
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "profile to view later...",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 180,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: brown,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FirasaInsight1Screen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Discover",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),

              const Text(
                'Search your history',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),

              // Saved Searches with eye + delete
              Container(
                width: 338,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saved Searches',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Ideal Matches',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            _iconWithCircularBorder(
                              Icons.remove_red_eye,
                              brown,
                            ),
                            const SizedBox(width: 8),
                            _iconWithCircularBorder(Icons.delete, Colors.red),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Age 25-30, Doctor/Engineer, Practicing...'),
                    const SizedBox(height: 6),
                    const Text('Family-oriented...'),
                    const SizedBox(height: 6),
                    const Text(
                      'Last used: 2 days ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Local Matches',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            _iconWithCircularBorder(
                              Icons.remove_red_eye,
                              brown,
                            ),
                            const SizedBox(width: 8),
                            _iconWithCircularBorder(Icons.delete, Colors.red),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Within 10km, Active in last week...'),
                    const SizedBox(height: 6),
                    const Text(
                      'Last used: 1 week ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: brown,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FirasaInsight1Screen(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Create new saved search',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Recent Searches box
              Container(
                width: 338,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent Searches',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    _recentSearchItemWithUse('Medical professionals in Riyadh'),
                    _recentSearchItemWithUse('Women aged 25-30 in Dubai'),
                    _recentSearchItemWithUse('Software engineers, 30-35'),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                        color: brown,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Clear recent searches',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'Enhance your search experiences',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 12),

              // 6 small boxes
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(6, (index) {
                  final titles = [
                    'Ask the Mufti',
                    'Family Panel',
                    'Mahr Calculator',
                    'Firasa Insights',
                    'Emotional Journey',
                    'AI Companion',
                  ];
                  return SizedBox(
                    width: 118,
                    height: 102,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFEFE9E1),
                          ),
                          child: Center(
                            child: Icon(
                              _iconForIndex(index),
                              size: 22,
                              color: brown,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          titles[index],
                          style: const TextStyle(
                            color: Color(0xFFB28767),
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ),

              const SizedBox(height: 18),

              // Bottom navigation row
              Center(
                child: Container(
                  width: 371,
                  height: 70,
                  decoration: BoxDecoration(
                    color: brown,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.home, color: Colors.white),
                      Icon(Icons.search, color: Colors.white),
                      Icon(Icons.message, color: Colors.white),
                      Icon(Icons.person, color: Colors.white),
                    ],
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

  Widget _recentSearchItemWithUse(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.search, size: 18, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: greenCircle,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              'use',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _iconForIndex(int idx) {
    switch (idx) {
      case 0:
        return Icons.gavel;
      case 1:
        return Icons.group;
      case 2:
        return Icons.calculate;
      case 3:
        return Icons.insights;
      case 4:
        return Icons.favorite;
      default:
        return Icons.smart_toy;
    }
  }

  Widget _iconWithCircularBorder(IconData icon, Color borderColor) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 1.5),
      ),
      child: Center(child: Icon(icon, color: borderColor, size: 18)),
    );
  }
}
