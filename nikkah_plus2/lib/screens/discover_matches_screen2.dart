import 'package:flutter/material.dart';
import 'family_panel_screen.dart';

class DiscoverMatchesScreen2 extends StatelessWidget {
  const DiscoverMatchesScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdf8f5), // Light beige background
      body: SafeArea(
        child: Column(
          children: [
            // Top Heading
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                "Discover Matches",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Upgrade Card (dark green background + white text)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff006d5b), // Dark green background
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  title: Text(
                    "Upgrade to Nika7 Gold",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // white text
                    ),
                  ),
                  subtitle: Text(
                    "See who likes you & unlock premium features",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // white button background
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    child: Text(
                      "Upgrade",
                      style: TextStyle(
                        color: const Color(0xff006d5b), // green text
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Two profile images (bigger size)
            SizedBox(
              height: 250,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    right: 70,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 22,
                          ),
                        ),
                        SizedBox(height: 8),
                        Transform.rotate(
                          angle: 0.1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'C',
                              width: 150, // bigger size
                              height: 200, // bigger size
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 70,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 22,
                          ),
                        ),
                        SizedBox(height: 8),
                        Transform.rotate(
                          angle: -0.1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/photo girl.png',
                              width: 150, // bigger size
                              height: 200, // bigger size
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40), // moved text further down
            // Match Text
            Text(
              "It's a match, Amina",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color(0xffb08a63),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              "Start a conversation now with each other",
              style: TextStyle(fontSize: 13, color: Colors.grey[700]),
            ),

            const SizedBox(height: 25),

            // Say Salaam Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FamilyPanelScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffb08a63),
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Say Salaam",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Keep Swiping Text
            Text(
              "Keep swiping",
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
