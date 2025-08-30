import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FamilyPanelScreen(),
    ),
  );
}

class FamilyPanelScreen extends StatelessWidget {
  const FamilyPanelScreen({super.key});

  final Color brown = const Color(0xFFb08a63);
  final Color darkGreen = Color(0xFF006400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: brown,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const Text(
                    "Family Panel",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Icon(Icons.more_vert, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 20),

              // Tabs
              Row(
                children: [
                  Text(
                    "Virtual Meetings",
                    style: TextStyle(
                      color: brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Family Members",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              const Divider(height: 30),

              // Virtual Meeting Room
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: brown,
                      child: const Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Virtual Meeting Room",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "This is your family’s primary meeting room.",
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFFb08a63),
                      child: Icon(
                        Icons.meeting_room,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "The Virtual Meeting Room allows you to arrange video calls, chats, and discussions between you, your match, and both families during the Khutuba (engagement) process.",
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              const SizedBox(height: 10),

              // Dark green box
              Container(
                width: 360,
                height: 61,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: darkGreen,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      child: Text(
                        "i",
                        style: TextStyle(
                          color: darkGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        "You can schedule meetings, invite specific family members, and control the meeting agenda...",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Active Meeting
              Row(
                children: [
                  CircleAvatar(radius: 6, backgroundColor: Colors.green),
                  const SizedBox(width: 8),
                  const Text(
                    "Active Meeting",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "Meeting with Ahmed Ibrahim's family...",
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 8),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _iconCircle(Icons.chat, Colors.black),
                  _iconCircle(Icons.notifications, Colors.black),
                  _iconCircle(Icons.mic, Colors.black),
                  _iconCircle(Icons.videocam, Colors.black),
                  _iconCircle(Icons.call_end, Colors.red),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  width: 184,
                  height: 45,
                  decoration: BoxDecoration(
                    color: brown,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      "Join Call",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Scheduled Meetings
              const Text(
                "Scheduled Meetings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 16),
              _scheduledMeetingCard(
                "Khutuba Discussion with Omar's Family",
                "Tomorrow, 7:00 PM\n6 participants",
                brown,
              ),
              const SizedBox(height: 20),
              _scheduledMeetingCard(
                "Mahr Discussion with Ahmed's Family",
                "Saturday, 7:00 PM\n6 participants",
                brown,
              ),
              const SizedBox(height: 30),

              // Meeting Templates
              const Text(
                "Meeting Templates",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 16),
              _templateCard(
                "Initial Family Introduction",
                "A structured meeting to introduce both families and discuss initial compatibility.",
              ),
              const SizedBox(height: 20),
              _templateCard(
                "Khutuba (Engagement) Ceremony",
                "A structured meeting to introduce both families and discuss initial compatibility.",
              ),
              const SizedBox(height: 30),

              // Bottom brown bar with icons
              Container(
                width: 351,
                height: 70,
                decoration: BoxDecoration(
                  color: brown,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _iconButton(Icons.chat),
                    _iconButton(Icons.notifications),
                    _iconButton(Icons.mic),
                    _iconButton(Icons.videocam),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconCircle(IconData icon, Color color) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Icon(icon, color: color),
    );
  }

  Widget _scheduledMeetingCard(String title, String subtitle, Color brown) {
    return Container(
      width: 364,
      height: 306,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: brown,
                child: const Icon(Icons.access_time, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(Icons.edit, color: Colors.green, size: 18),
              ),
              const SizedBox(width: 8),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(Icons.delete, color: Colors.red, size: 18),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(subtitle, style: const TextStyle(fontSize: 12)),
          const Spacer(),
          Container(
            width: 294,
            height: 70,
            decoration: BoxDecoration(
              color: brown,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: Text(
                "Start Now",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 294,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(color: brown, width: 1),
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "Invite More",
                style: TextStyle(color: brown, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _templateCard(String title, String subtitle) {
    return Container(
      width: 361,
      height: 199,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xFFb08a63),
                child: const Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const Spacer(),
          Container(
            width: 185,
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFb08a63), width: 1),
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: const Center(
              child: Text(
                "Use Template",
                style: TextStyle(color: Color(0xFFb08a63), fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFd2b48c), // light brown
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}
