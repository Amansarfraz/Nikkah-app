import 'package:flutter/material.dart';

class FamilyPanelScreen3 extends StatelessWidget {
  const FamilyPanelScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Family Panel",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top tabs
            Row(
              children: [
                Text(
                  "Shared Conversations",
                  style: TextStyle(
                    color: Colors.brown[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  "Linked Profiles",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),

            // Brown line under "Shared Conversations"
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 3,
              width: 180,
              color: Colors.brown[700],
            ),

            const SizedBox(height: 16),

            // Header row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Conversations Shared with Family",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "Manage All",
                  style: TextStyle(
                    color: Colors.brown[700],
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Chat Cards
            _conversationCard(
              "assets/images/Profile (4).png",
              "Ahmed Ibrahim",
              "92% Match",
              "Father, Mother",
              "Wa alaikum assalam! Yes, I would be interested in discussing that further...",
              "2h ago",
            ),
            _conversationCard(
              "assets/images/Profile (5).png",
              "Omar Farooq",
              "85% Match",
              "Father",
              "I'd be happy to tell you more about my business. It’s in the tech industry...",
              "1d ago",
            ),
            _conversationCard(
              "assets/images/Profile (6).png",
              "Khalid Rahman",
              "88% Match",
              "Mother, Brother",
              "I believe family is the foundation of a strong marriage. My parents taught me...",
              "1d ago",
            ),

            const SizedBox(height: 24),

            // Privacy Settings Header
            const Text(
              "Conversation Privacy Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),

            // Default Settings Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Default Sharing Settings",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 5, 68, 8),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Settings List
            _settingTile("Share new matches with family", true),
            _settingTile("Allow family to message matches", false),
            _settingTile("Notify family of new conversations", true),
            _settingTile("Auto-share serious conversations", true),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
        decoration: BoxDecoration(
          color: Colors.brown[300],
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.people, color: Colors.white),
            Icon(Icons.chat, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _conversationCard(
    String img,
    String name,
    String match,
    String sharedWith,
    String lastMsg,
    String time,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 22, backgroundImage: AssetImage(img)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      time,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown[700],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        match,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "Shared with: $sharedWith",
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  "Last message: $lastMsg",
                  style: const TextStyle(fontSize: 13, color: Colors.black87),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingTile(String text, bool isActive) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      value: isActive,
      onChanged: (_) {},
      title: Text(text, style: const TextStyle(fontSize: 14)),
      activeColor: Colors.green[900], // Dark green active color
      activeTrackColor: Colors.green[700], // Dark green track
    );
  }
}
