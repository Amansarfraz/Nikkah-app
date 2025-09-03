import 'package:flutter/material.dart';
import 'firasa_insight2_screen.dart';

class FirasaInsight1Screen extends StatelessWidget {
  const FirasaInsight1Screen({super.key});

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

              // Tabs Row - Scrollable
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Personality',
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
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight2Screen(),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight2Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Face Analysis',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirasaInsight2Screen(),
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

              // Icon + Heading
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
                'Your Personality Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Based on your photos and interactions',
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 30),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Text(
                      'Analytical',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Compassionate',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Detail-oriented',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Patient',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Emotional Intelligence',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '85%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Image.asset('assets/images/85.png'),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Communication Style', style: TextStyle(fontSize: 16)),
                  Text(
                    '78%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Image.asset('assets/images/78.png'),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Conflict Resolution', style: TextStyle(fontSize: 16)),
                  Text(
                    '92%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Image.asset('assets/images/92.png'),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Adaptability', style: TextStyle(fontSize: 16)),
                  Text(
                    '88%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Image.asset('assets/images/88.png'),

              const SizedBox(height: 30),
              Image.asset('assets/images/f1.png'),
              const SizedBox(height: 20),
              Image.asset('assets/images/f2.png'),
              const SizedBox(height: 20),
              Image.asset('assets/images/f3.png'),
              const SizedBox(height: 20),
              Image.asset('assets/images/f4.png'),
              const SizedBox(height: 20),
              Image.asset('assets/images/f5.png'),

              const SizedBox(height: 30),

              const Text(
                'Growth Opportunities',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/f6.png'),

              const SizedBox(height: 80), // Space for button
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
                builder: (context) => const FirasaInsight2Screen(),
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
