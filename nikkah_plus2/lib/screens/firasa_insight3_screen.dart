import 'package:flutter/material.dart';
import 'firasa_insight4_screen.dart';

class FirasaInsight3Screen extends StatelessWidget {
  const FirasaInsight3Screen({super.key});

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
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Heading Center
              const Center(
                child: Text(
                  'Firasa Insights',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              // Tabs Row - Scrollable
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight4Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Personality',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight4Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Compatibility',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // This is the current screen so you can keep it same or refresh
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight3Screen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          const Text(
                            'Face Analysis',
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(height: 2, width: 100, color: Colors.brown),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight4Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Islamic Tradition',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Icon + Heading Row
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD2B48C), // Light brown
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ficon.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Firasa Analysis',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                'Personality insights based on Islamic tradition',
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 20),

              const Text(
                'Firasa is the Islamic concept of insight and intuition. Our analysis combines traditional Firasa principles with modern personality psychology to provide deeper understanding of compatibility.',
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 10),

              Image.asset('assets/images/fibox.png'),

              const SizedBox(height: 30),

              const Text(
                'Firasa Face Analysis',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Discover personality insights based on traditional Firasa',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'In Islamic tradition, Firasa includes the ability to discern character traits from facial features. Upload a photo to analyze facial features and receive insights based on traditional wisdom.',
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/r1.png'),
                  Image.asset('assets/images/r2.png'),
                  Image.asset('assets/images/r3.png'),
                ],
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  'Upload a photo for analysis',
                  style: TextStyle(fontSize: 14),
                ),
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  'Click to select a photo from your device',
                  style: TextStyle(fontSize: 14),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Firasa Facial Features Guide',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Traditional Firasa includes the study of facial features to understand personality traits. Here are some key features and their traditional interpretations:',
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 30),

              Image.asset('assets/images/f14.png'),
              const SizedBox(height: 30),
              Image.asset('assets/images/f15.png'),
              const SizedBox(height: 30),
              Image.asset('assets/images/f16.png'),
              const SizedBox(height: 30),
              Image.asset('assets/images/f17.png'),
              const SizedBox(height: 30),
              Image.asset('assets/images/f18.png'),

              const SizedBox(height: 80), // Space for bottom button
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown.shade300,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FirasaInsight4Screen(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/box.png', height: 24),
              Image.asset('assets/images/box1.png', height: 24),
              Image.asset('assets/images/box2.png', height: 24),
              Image.asset('assets/images/box3.png', height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
