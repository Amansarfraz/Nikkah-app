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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top bar with back arrow + title
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black, size: 28),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Family Panel",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 28), // keeps title centered
                ],
              ),
              const SizedBox(height: 24),

              // Virtual Meeting section
              Row(
                children: [
                  Text(
                    "Virtual Meeting",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Family Members",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Shar...",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              Divider(color: Colors.brown),

              // Virtual Meeting Room
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.brown,
                    child: const Icon(Icons.video_call, color: Colors.black),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Virtual Meeting Room",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
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

              // Dark green square box with "i"
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      height: 23.3,
                      width: 23.3,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[900],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "You can schedule meetings, invite specific family members, and control the meeting agenda...",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Active Meeting
              Row(
                children: const [
                  CircleAvatar(radius: 6, backgroundColor: Colors.green),
                  SizedBox(width: 8),
                  Text(
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

              // Meeting Image
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Participant.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Bottom icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _circleButton(Icons.chat),
                  _circleButton(Icons.notifications),
                  _circleButton(Icons.mic),
                  _circleButton(Icons.videocam),
                  // Call End Dark Red
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red, // dark red
                    ),
                    child: const Icon(Icons.call_end, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Join Call button
              Container(
                height: 45,
                width: 184,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(45 / 2),
                ),
                child: const Center(
                  child: Text(
                    "Join Call",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Scheduled Meetings
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Scheduled Meetings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),

              _scheduledMeetingCard(
                title: "Khutuba Discussion with Omar's Family",
                subtitle: "Tomorrow, 7:00 PM\n6 participants",
              ),

              const SizedBox(height: 24),

              _scheduledMeetingCard(
                title: "Mahr Discussion with Ahmed's Family",
                subtitle: "Saturday, 7:00 PM\n6 participants",
              ),

              const SizedBox(height: 24),

              // Meeting Templates
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Meeting Templates",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),

              _templateCard(
                title: "Initial Family Introduction",
                desc:
                    "A structured meeting to introduce both families and discuss initial compatibility....",
              ),
              const SizedBox(height: 24),
              _templateCard(
                title: "Khutuba (Engagement) Ceremony",
                desc:
                    "A structured meeting to introduce both families and discuss initial compatibility....",
              ),

              const SizedBox(height: 24),

              // Bottom bar single button with icons
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home, color: Colors.white),
                    Icon(Icons.people, color: Colors.white),
                    Icon(Icons.calendar_today, color: Colors.white),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper for circular buttons
  Widget _circleButton(IconData icon) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: Icon(icon, color: Colors.black, size: 20),
    );
  }

  // Scheduled Meeting Card
  Widget _scheduledMeetingCard({
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: 364,
      height: 306,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.brown,
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
              // Edit icon
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.green.shade900),
                ),
                child: Icon(Icons.edit, color: Colors.green.shade900),
              ),
              const SizedBox(width: 8),
              // Delete icon
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.red.shade900),
                ),
                child: Icon(Icons.delete, color: Colors.red.shade900),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(subtitle, style: const TextStyle(fontSize: 12)),
          const Spacer(),
          Column(
            children: [
              Container(
                height: 70,
                width: 294,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(70 / 2),
                ),
                child: const Center(
                  child: Text(
                    "Start Now",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  height: 70,
                  width: 294,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(70 / 2),
                  ),
                  child: const Center(
                    child: Text(
                      "Invite More",
                      style: TextStyle(color: Colors.brown, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Template Card
  Widget _templateCard({required String title, required String desc}) {
    return Container(
      width: 361,
      height: 199,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.brown,
                child: const Icon(Icons.person, color: Colors.black),
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
            ],
          ),
          const SizedBox(height: 12),
          Text(desc, style: const TextStyle(fontSize: 12)),
          const Spacer(),
          Center(
            child: Container(
              height: 45,
              width: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45 / 2),
                border: Border.all(color: Colors.brown),
              ),
              child: const Center(
                child: Text(
                  "Use Template",
                  style: TextStyle(color: Colors.brown, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
