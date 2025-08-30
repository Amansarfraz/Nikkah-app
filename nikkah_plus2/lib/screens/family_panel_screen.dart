import 'package:flutter/material.dart';

class FamilyPanelScreen extends StatelessWidget {
  const FamilyPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Arrow + Title (Centered)
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Family Panel",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48), // balance for arrow space
                ],
              ),

              const SizedBox(height: 20),

              // Virtual Meeting Heading
              Row(
                children: const [
                  Text(
                    "Virtual Meeting",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Family Members",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Shar...",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),

              const SizedBox(height: 4),
              Container(height: 2.5, color: Colors.brown),

              const SizedBox(height: 16),

              // Virtual Meeting Room Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.video_call,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Virtual Meeting Room",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "The Virtual Meeting Room allows you to arrange video calls, chats, and discussions between you, your match, and both families during the Khutuba (engagement) process.",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Dark Green Box
              Container(
                height: 61,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      width: 23.3,
                      height: 23.3,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            color: Colors.green.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      flex: 3,
                      child: Text(
                        "You can schedule meetings, invite specific family members, and control the meeting agenda...",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Active Meeting Section
              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Active Meeting",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Text("Meeting with Ahmed Ibrahim's family..."),

              const SizedBox(height: 10),

              // Example Image Placeholder
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300,
                ),
                child: const Center(child: Text("Image Placeholder")),
              ),

              const SizedBox(height: 10),

              // Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircleIcon(Icons.chat, Colors.black),
                  _buildCircleIcon(Icons.notifications, Colors.black),
                  _buildCircleIcon(Icons.mic, Colors.black),
                  _buildCircleIcon(Icons.videocam, Colors.black),
                  _buildCircleIcon(Icons.call_end, Colors.red),
                ],
              ),

              const SizedBox(height: 20),

              // Join Call Button
              Center(
                child: Container(
                  height: 45,
                  width: 184,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Center(
                    child: Text(
                      "Join Call",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Scheduled Meetings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              const SizedBox(height: 16),

              // Meeting Box
              _buildMeetingBox(
                title: "Khutuba Discussion with Omar's Family",
                subtitle: "Tomorrow, 7:00 PM\n6 participants",
              ),

              const SizedBox(height: 30),

              _buildMeetingBox(
                title: "Mahr Discussion with Ahmed's Family",
                subtitle: "Saturday, 7:00 PM\n6 participants",
              ),

              const SizedBox(height: 30),

              const Text(
                "Meeting Templates",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              const SizedBox(height: 20),

              // Template Box 1
              _buildTemplateBox(
                icon: Icons.person,
                title: "Initial Family Introduction",
                description:
                    "A structured meeting to introduce both families and discuss initial compatibility.",
              ),

              const SizedBox(height: 30),

              // Template Box 2
              _buildTemplateBox(
                icon: Icons.people,
                title: "Khutuba (Engagement) Ceremony",
                description:
                    "A structured meeting to introduce both families and discuss initial compatibility.",
              ),

              const SizedBox(height: 30),

              // Bottom Bar
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown.shade700,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _BottomBarButton(icon: Icons.home),
                    _BottomBarButton(icon: Icons.calendar_today),
                    _BottomBarButton(icon: Icons.chat),
                    _BottomBarButton(icon: Icons.settings),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Circle Icon Builder
  static Widget _buildCircleIcon(IconData icon, Color color) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black),
      ),
      child: Icon(icon, color: color),
    );
  }

  // Meeting Box Widget
  Widget _buildMeetingBox({required String title, required String subtitle}) {
    return Container(
      width: 364,
      height: 306,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
                child: const Icon(Icons.access_time, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green),
                ),
                child: const Icon(Icons.edit, size: 16, color: Colors.green),
              ),
              const SizedBox(width: 8),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red),
                ),
                child: const Icon(Icons.delete, size: 16, color: Colors.red),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(subtitle),
          const Spacer(),
          Column(
            children: [
              Container(
                height: 70,
                width: 294,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: const Center(
                  child: Text(
                    "Start Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 70,
                width: 294,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(color: Colors.brown),
                ),
                child: const Center(
                  child: Text(
                    "Invite More",
                    style: TextStyle(color: Colors.brown, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Template Box Widget
  Widget _buildTemplateBox({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      width: 361,
      height: 199,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
                child: Icon(icon, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(description),
          const Spacer(),
          Center(
            child: Container(
              height: 45,
              width: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: Colors.brown),
              ),
              child: const Center(
                child: Text(
                  "Use Templates",
                  style: TextStyle(color: Colors.brown, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Bottom Bar Button
class _BottomBarButton extends StatelessWidget {
  final IconData icon;
  const _BottomBarButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFD2B48C), // Light Brown
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
