import 'package:flutter/material.dart';
import 'membership_screen.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              const Text(
                'Assalamu Alaikum, Amina',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              const Text(
                'Begin your journey to a blessed union',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 8),

              // Path Image below caption
              Image.asset('assets/images/border.png', height: 20),

              const SizedBox(height: 20),

              // Featured Matches title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Featured Matches',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Matches Cards Horizontal List
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MatchCard(
                      name: 'Ahmed, 28',
                      profession: 'Software Engineer',
                      status: 'Practicing • Family oriented',
                      percentage: 32,
                      image: 'assets/images/match1.png',
                    ),
                    const SizedBox(width: 12),
                    MatchCard(
                      name: 'Fatima, 24',
                      profession: 'Doctor',
                      status: 'Hafiza • Family Oriented',
                      percentage: 60,
                      image: 'assets/images/match2.png',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // View All Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD4B89B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('View All', style: TextStyle(fontSize: 16)),
                ),
              ),

              const SizedBox(height: 30),

              // Explore Features
              const Text(
                'Explore Features',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),

              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  FeatureTile(icon: Icons.help, label: 'Ask the Mufti'),
                  FeatureTile(icon: Icons.group, label: 'Family Panel'),
                  FeatureTile(icon: Icons.calculate, label: 'Mahr Calculator'),
                  FeatureTile(icon: Icons.lightbulb, label: 'Firasa Insights'),
                  FeatureTile(icon: Icons.favorite, label: 'Emotional Journey'),
                  FeatureTile(icon: Icons.smart_toy, label: 'AI Companion'),
                  FeatureTile(icon: Icons.map, label: 'Nikah Navigator'),
                ],
              ),

              const SizedBox(height: 30),

              // Your Journey
              const Text(
                'Your Journey',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your profile is 85% complete',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Add more details to increase your matches',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Column(children: [Text('12'), Text('Profile Views')]),
                        Column(children: [Text('5'), Text('New Matches')]),
                        Column(children: [Text('3'), Text('Conversations')]),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ✅ Bottom custom button with Navigator
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MembershipPlansScreen(),
                      ),
                    ); // Navigate to SecondScreen on button tap
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD4B89B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/box.png', height: 20),
                      Image.asset('assets/images/box1.png', height: 20),
                      Image.asset('assets/images/box2.png', height: 20),
                      Image.asset('assets/images/box3.png', height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  final String name, profession, status, image;
  final int percentage;

  const MatchCard({
    super.key,
    required this.name,
    required this.profession,
    required this.status,
    required this.percentage,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.circle, size: 10, color: Colors.green),
                    const SizedBox(width: 4),
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text('$percentage%'),
                  ],
                ),
                const SizedBox(height: 4),
                Text(profession, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 4),
                Text(status, style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('View Profile'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const FeatureTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: Colors.brown),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
