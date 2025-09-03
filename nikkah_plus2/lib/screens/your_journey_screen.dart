import 'package:flutter/material.dart';
import 'inbox_screen.dart';

class YourJourneyScreen extends StatelessWidget {
  const YourJourneyScreen({super.key});

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
                  'Your Journey',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Tabs Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Journey Timeline',
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
                    const SizedBox(width: 20),
                    const Text(
                      'Match Journey',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Islamic',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Emotional Journey Heading
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/eicon.png'),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Emotional Journey',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              const Text(
                'The path to a blessed union',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 20),

              const Text(
                'Finding a spouse in Islam is a journey of faith, respect, and purposeful connection. This moodboard visualizes the emotional stages from initial meeting to marriage, helping you understand where you are in your journey.',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 20),

              Image.asset('assets/images/jimage1.png'),

              const SizedBox(height: 20),

              const Text(
                'Your Journey Timeline',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // Steps with Icons
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.brown.shade100,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(width: 2, height: 40, color: Colors.brown),
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Discovery',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'The initial stage of finding potential matches based on compatibility, values, and intentions. This is where you explore profiles and discover people who share your faith and life goals.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/discovery.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: const Text(
                          'Your Progress',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: const Text(
                          'Completed',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: const Text(
                          'Browsed 24 profiles',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: const Text(
                          '5 mutual interests',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Helpful Tips',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('• Focus on values and character over appearance'),
                  const Text('• Look for signs of religious commitment'),
                  const Text('• Consider long-term compatibility factors'),
                  const SizedBox(height: 20),
                  Container(
                    color: Colors.brown.shade100,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dua for Guidance',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي',
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '"My Lord, expand for me my chest and ease for me my task"',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Second Step
                  Image.asset('assets/images/jstep2.png'),
                  const SizedBox(height: 10),
                  const Text(
                    'Helpful Tips',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '• Ask thoughtful questions about values and goals',
                  ),
                  const Text('• Be honest and authentic in your responses'),
                  const Text(
                    '• Maintain appropriate boundaries in conversation',
                  ),
                  const Text(
                    '• Look for consistency in character & communication',
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/jstep2b.png'),

                  const SizedBox(height: 20),

                  // Third Step
                  Image.asset('assets/images/jstep3.png'),

                  const SizedBox(height: 20),

                  // Fourth Step
                  const Text(
                    'Deep Understanding',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Discussing important topics like religious practices, financial expectations, family planning, and life goals. This stage builds a foundation for a strong marriage.',
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/jstep4.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: const Text('Your Progress'),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: const Text('Not Started'),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: const Text('0 deep discussions'),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: const Text('Compatibility tools ready'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Fifth Step
                  const Text(
                    'Formal Meeting',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Meeting in person with family members present. This stage allows for face-to-face interaction in a respectful, halal environment to confirm compatibility.',
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/jstep4.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: const Text('Your Progress'),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: const Text('Not Started'),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: const Text('0 meetings arranged'),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: const Text('Meeting planner available'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Last Step
                  const Text(
                    'Engagement & Nikah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'The formal agreement to marry and the Islamic marriage contract. This blessed milestone marks the beginning of your life together with Allah\'s guidance.',
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/jstep4.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: const Text('Your Progress'),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: const Text('Not Started'),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: const Text('0 Future milestone'),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: const Text('Mahr Calculator available'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Your Emotional Journey',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Current Emotional State',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Text('Based on your activity and interactions'),

                  const SizedBox(height: 20),
                  const Text('Excitement'),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/excitement.png'),
                      Positioned(top: 8, right: 8, child: const Text('85%')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Patience'),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/patience.png'),
                      Positioned(top: 8, right: 8, child: const Text('70%')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Thoughtfulness'),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/thoughtfulness.png'),
                      Positioned(top: 8, right: 8, child: const Text('90%')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Clarity of intention'),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Image.asset('assets/images/clarity.png'),
                      Positioned(top: 8, right: 8, child: const Text('95%')),
                    ],
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    'Reflection',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'You\'re in an exciting phase of your journey, showing thoughtfulness and clear intentions. Remember that patience is key in finding the right match. Continue to engage in meaningful conversations and involve your family when you feel ready.',
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Reflection Journal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Reflecting on your journey can provide clarity and insight. Consider these prompts for your personal reflection:',
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/journal.png'),
                  const SizedBox(height: 10),
                  const Text(
                    'Past Reflections',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'How has your understanding of marriage in Islam evolved since beginning this journey?',
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Future Reflection',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'What steps can you take to ensure your search remains aligned with Islamic principles?',
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.brown.shade200),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      'View Journal Entries',
                      style: TextStyle(
                        color: Colors.brown.shade200,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InboxScreen()),
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
