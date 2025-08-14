import 'package:flutter/material.dart';
import 'swipe_right_screen.dart';

class QuickViewScreen extends StatelessWidget {
  const QuickViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Quick View",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              // Upgrade Card
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF006400),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Upgrade to Nika7 Gold",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "See who likes you & unlock premium features",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Upgrade",
                          style: TextStyle(
                            color: Color(0xFF006400),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Profile Image
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 380,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/images/photo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Black info area
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Mohammad Ali, 33",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Charted Accountant",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  SizedBox(
                                    width: 150,
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8B5E3C),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "Quick View",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Four small buttons (slightly smaller)
                          Wrap(
                            spacing: 6,
                            runSpacing: 6,
                            children: [
                              _smallButton(
                                text: "Practicing",
                                width: 60,
                                height: 23,
                                bgColor: const Color(0xFFD2B48C),
                              ),
                              _smallButton(
                                text: "Most Prayers Daily",
                                width: 140,
                                height: 23,
                                bgColor: const Color(0xFFD2B48C),
                              ),
                              _smallButton(
                                text: "Humorous",
                                width: 60,
                                height: 23,
                                bgColor: const Color(0xFFD2B48C),
                              ),
                              _smallButton(
                                text: "Knows Arabic",
                                width: 70,
                                height: 23,
                                bgColor: const Color(0xFFD2B48C),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),
                          _largeButton(text: "View Full Profile"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Three icons row
                    SizedBox(
                      width: 295,
                      height: 99,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customCircleIcon(
                            bgSize: 78,
                            iconSize: 30,
                            icon: Icons.close,
                            bgColor: Colors.brown.shade100,
                            iconColor: Colors.green,
                          ),
                          _customCircleIcon(
                            bgSize: 99,
                            iconSize: 42.5,
                            icon: Icons.favorite,
                            bgColor: const Color(0xFF8B5E3C),
                            iconColor: Colors.white,
                          ),
                          _customCircleIcon(
                            bgSize: 78,
                            iconSize: 25,
                            icon: Icons.star,
                            bgColor: Colors.brown.shade100,
                            iconColor: Colors.brown,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Fixed GestureDetector section
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SwipeRightScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    // Bottom Navigation Bar
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8B5E3C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.phone, color: Colors.white, size: 26),
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                            size: 26,
                          ),
                          Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 26,
                          ),
                          Icon(Icons.share, color: Colors.white, size: 26),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customCircleIcon({
    required double bgSize,
    required double iconSize,
    required IconData icon,
    required Color bgColor,
    required Color iconColor,
  }) {
    return Container(
      width: bgSize,
      height: bgSize,
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: Center(
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }

  Widget _smallButton({
    required String text,
    required double width,
    required double height,
    Color bgColor = const Color(0xFFD2B48C),
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _largeButton({required String text}) {
    return Container(
      width: double.infinity,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xFFD2B48C),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
