import 'package:flutter/material.dart';

class FamilyPanelScreen extends StatelessWidget {
  const FamilyPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffb08a63),
        unselectedItemColor: Colors.grey,
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
                  const Text(
                    "Family Panel",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.more_vert, color: Colors.grey[700]),
                ],
              ),
              const SizedBox(height: 12),

              // Tabs
              Row(
                children: [
                  Text(
                    "Virtual Meetings",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffb08a63),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Family Members",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Virtual Meeting Room Card
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xffb08a63),
                      child: Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "Virtual Meeting Room\nThis is your family’s primary meeting room.",
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Active Meeting
              Text(
                "Active Meeting",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://via.placeholder.com/300x150",
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mic, color: Colors.grey[700]),
                        const SizedBox(width: 20),
                        Icon(Icons.videocam, color: Colors.grey[700]),
                        const SizedBox(width: 20),
                        Icon(Icons.people, color: Colors.grey[700]),
                        const SizedBox(width: 20),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.call_end,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffb08a63),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: const Size(double.infinity, 40),
                        ),
                        onPressed: () {},
                        child: const Text("Join Call"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Scheduled Meetings
              Text(
                "Scheduled Meetings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),

              _meetingCard("Khatab Discussion with Omar’s Family"),
              const SizedBox(height: 12),
              _meetingCard("Mahr Discussion with Amina’s Family"),

              const SizedBox(height: 20),

              // Meeting Templates
              Text(
                "Meeting Templates",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),

              _templateCard(
                "Initial Family Introduction",
                "A short meeting focused on both families and general compatibility.",
              ),
              const SizedBox(height: 12),
              _templateCard(
                "Khatab (Engagement Ceremony)",
                "A formal meeting focused on future family and marriage preparation.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Meeting Card Widget
  Widget _meetingCard(String title) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.access_time, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              const Text("5:00 PM", style: TextStyle(fontSize: 12)),
              const Spacer(),
              Icon(Icons.check_circle, size: 16, color: Colors.green),
              const SizedBox(width: 6),
              Icon(Icons.close, size: 16, color: Colors.red),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb08a63),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(double.infinity, 36),
                  ),
                  onPressed: () {},
                  child: const Text("Start Now"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xffb08a63)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(double.infinity, 36),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Invite More",
                    style: TextStyle(color: Color(0xffb08a63)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Template Card Widget
  Widget _templateCard(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 12, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xffb08a63)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: const Size(double.infinity, 36),
              ),
              onPressed: () {},
              child: const Text(
                "Use Template",
                style: TextStyle(color: Color(0xffb08a63)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
