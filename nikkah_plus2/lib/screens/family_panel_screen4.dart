import 'package:flutter/material.dart';
import 'nikkah_navigator.dart';

class FamilyPanelScreen4 extends StatelessWidget {
  const FamilyPanelScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Family Panel",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tabs
              Row(
                children: [
                  Text(
                    "Shared Conversations",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      const Text(
                        "Linked Profiles",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.brown,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 120,
                        color: Colors.brown,
                        margin: const EdgeInsets.only(top: 4),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Explanatory text
              Text(
                "Manage profiles you’ve created for your family members",
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              const SizedBox(height: 4),
              Text(
                "As a guardian or parent, you can create and manage profiles for your children, helping them find suitable matches while respecting their preferences.",
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
              ),

              const SizedBox(height: 16),

              // Dark green box
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 14,
                      child: Icon(
                        Icons.info,
                        color: Colors.green.shade800,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "You can sync your account with your guardians profiles to help them in their marriage search journey.",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Your Linked Profiles Title
              const Text(
                "Your Linked Profiles",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),

              // Profile Card 1
              profileCard(
                "assets/images/Fatima Khan.png",
                "Fatima Khan",
                "28 years old · Daughter",
                "87%",
                "12",
              ),

              const SizedBox(height: 12),

              // Profile Card 2
              profileCard(
                "assets/images/Profile (4).png",
                "Ahmed Khan",
                "32 years old · Son",
                "92%",
                "8",
              ),

              const SizedBox(height: 20),

              // Profile Management
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Profile Management",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Default Privacy Settings",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 12),
                    switchTile("Approve all friend requests"),
                    switchTile("Allow direct messaging"),
                    switchTile("Notify all profile activity"),
                  ],
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      // Floating Bottom Navigation Bar
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFD7CCC8), // light brown
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFFD7CCC8), // light brown
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.brown,
            unselectedItemColor: Colors.grey[700],
            onTap: (index) {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NikkahNavigator(),
                  ),
                );
              }
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ],
          ),
        ),
      ),
    );
  }

  // Profile card widget
  Widget profileCard(
    String img,
    String name,
    String relation,
    String match,
    String active,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Row
          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(img), radius: 22),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      relation,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade800, // Dark green
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Active",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ), // White text
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          const Text(
            "Recent Activity",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.brightness_1, size: 6, color: Colors.black),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  "Received a new Match request from Omar (2 hours ago)",
                  style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.brightness_1, size: 6, color: Colors.black),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  "Sent a message to Ahmed (1 day ago)",
                  style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          // Boxes closer together (3 column spacing)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0FDFA),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "$match Marriage Match",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEF2FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "$active Active Matches",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          const Center(
            child: Text(
              "View All",
              style: TextStyle(color: Colors.teal, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  // Switch Tile
  static Widget switchTile(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: const TextStyle(fontSize: 14)),
        Switch(
          value: true,
          onChanged: (val) {},
          activeColor: Colors.white,
          activeTrackColor: Colors.green.shade800,
        ),
      ],
    );
  }
}
