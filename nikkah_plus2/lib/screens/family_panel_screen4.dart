import 'package:flutter/material.dart';

class FamilyPanelScreen4 extends StatelessWidget {
  const FamilyPanelScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
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
                      Text(
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
                    Expanded(
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
              Text(
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
                      children: [
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
                    Text(
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

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
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
                      style: TextStyle(
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
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Active",
                  style: TextStyle(color: Colors.green.shade800, fontSize: 12),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          Text(
            "Recent Activity",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.brightness_1, size: 6, color: Colors.black),
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
              Icon(Icons.brightness_1, size: 6, color: Colors.black),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Brown match box
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "$match Marriage Match",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Purple active matches box
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "$active Active Matches",
                      style: TextStyle(
                        color: Colors.purple.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          Center(
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
  Widget switchTile(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 14)),
        Switch(value: true, onChanged: (val) {}),
      ],
    );
  }
}
