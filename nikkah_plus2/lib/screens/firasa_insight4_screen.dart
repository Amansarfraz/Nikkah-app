import 'package:flutter/material.dart';
// Make sure this import is correct

class FirasaInsight4Screen extends StatelessWidget {
  const FirasaInsight4Screen({super.key});

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
              // Main Heading
              const Center(
                child: Text(
                  'Firasa Insights',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              // Tabs Row with Navigator
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Personality',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Compatibility',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Face Analysis',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(height: 2, width: 100, color: Colors.brown),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Islamic Tradition',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Icon with Heading
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ficon.png'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Firasa Analysis',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Text(
                'Personality insights based on Islamic tradition',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),

              const Text(
                'Firasa is the Islamic concept of insight and intuition. Our analysis combines traditional Firasa principles with modern personality psychology to provide deeper understanding of compatibility.',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 8),

              // First Image
              Image.asset('assets/images/fibox.png'),

              const SizedBox(height: 24),

              const Text(
                'Your Islamic Personality Type',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 8),

              // Second Image
              Image.asset('assets/images/f18.png'),

              const SizedBox(height: 24),

              const Text(
                'Secondary Personality Type',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 8),

              // 4 Images Row-wise
              Column(
                children: [
                  Image.asset('assets/images/f20.png'),
                  const SizedBox(height: 8),
                  Image.asset('assets/images/f21.png'),
                  const SizedBox(height: 8),
                  Image.asset('assets/images/f22.png'),
                  const SizedBox(height: 8),
                  Image.asset('assets/images/f23.png'),
                ],
              ),

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
          onPressed: () {},
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
