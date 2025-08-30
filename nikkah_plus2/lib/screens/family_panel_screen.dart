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
                  Icon(Icons.arrow_back, color: Colors.black, size: 28),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Family Panel",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 28), // keeps title centered
                ],
              ),
              const SizedBox(height: 24),

              // Virtual Meeting section
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Virtual Meeting",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(color: Colors.black),

              // Virtual Meeting Room
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.brown,
                    child: Icon(Icons.video_call, color: Colors.black),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Virtual Meeting Room",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
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

              // Dark green box with "i"
              Container(
                height: 61,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(61 / 2),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      height: 23.3,
                      width: 23.3,
                      decoration: BoxDecoration(
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
                  _circleButton(
                    Icons.call_end,
                    bgColor: const Color.fromARGB(255, 236, 230, 230),
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
                child: Center(
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
                child: Text(
                  "Scheduled Meetings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),

              // Example scheduled meeting card
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
                child: Text(
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

              // Bottom bar with 4 buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _circleButton(Icons.home, bgColor: Colors.brown[200]),
                  _circleButton(Icons.people, bgColor: Colors.brown[200]),
                  _circleButton(
                    Icons.calendar_today,
                    bgColor: Colors.brown[200],
                  ),
                  _circleButton(Icons.settings, bgColor: Colors.brown[200]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper for circular buttons
  Widget _circleButton(IconData icon, {Color? bgColor}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor ?? Colors.white,
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
                child: Icon(Icons.access_time, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              _circleButton(
                Icons.edit,
                bgColor: const Color.fromARGB(255, 239, 241, 239),
              ),
              const SizedBox(width: 8),
              _circleButton(
                Icons.delete,
                bgColor: const Color.fromARGB(255, 221, 217, 217),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(subtitle, style: TextStyle(fontSize: 12)),
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
                child: Center(
                  child: Text(
                    "Start Now",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 70,
                width: 294,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.brown),
                  borderRadius: BorderRadius.circular(70 / 2),
                ),
                child: Center(
                  child: Text(
                    "Invite More",
                    style: TextStyle(color: Colors.brown, fontSize: 14),
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
                child: Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(desc, style: TextStyle(fontSize: 12)),
          const Spacer(),
          Container(
            height: 45,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45 / 2),
              border: Border.all(color: Colors.brown),
            ),
            child: Center(
              child: Text(
                "Use Template",
                style: TextStyle(color: Colors.brown, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
