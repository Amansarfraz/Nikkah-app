import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: FamilyPanelScreen.new(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class FamilyPanelScreen extends StatelessWidget {
  const FamilyPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top bar with back arrow + Family Panel
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_back, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    "Family Panel",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Virtual Meeting Title + Divider + Subtitles
              Row(
                children: const [
                  Text(
                    "Virtual Meeting",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.brown, thickness: 1),
              Row(
                children: const [
                  Text(
                    "Family Members",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Shar...",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Green Info Box
              Container(
                width: 360,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 9, 49, 11),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "The Virtual Meeting Room allows you to arrange video calls, chats, and discussions between you, your match, and both families during the Khutuba (engagement) process.",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 23,
                      height: 23,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 16, 54, 18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Active Meeting
              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 26, 78, 28),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Active Meeting",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Meeting with Ahmed Ibrahim's family...",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 12),

              // Example image placeholder
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(child: Text("Image Placeholder")),
              ),

              const SizedBox(height: 16),

              // Bottom circular buttons for meeting actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _circleButton(Icons.chat, Colors.lightBlue),
                  _circleButton(Icons.notifications, Colors.orange),
                  _circleButton(Icons.mic, const Color.fromARGB(255, 6, 85, 9)),
                  _circleButton(Icons.videocam, Colors.purple),
                  _circleButton(
                    Icons.call_end,
                    const Color.fromARGB(255, 141, 20, 12),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Join Call Button
              SizedBox(
                width: 184,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Join Call",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Scheduled Meetings
              const Text(
                "Scheduled Meetings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              // Scheduled Meeting Box
              _meetingBox(
                title: "Khutuba Discussion with Omar's Family",
                subtitle: "Tomorrow, 7:00 PM\n6 participants",
              ),
              const SizedBox(height: 24),
              _meetingBox(
                title: "Mahr Discussion with Ahmed's Family",
                subtitle: "Saturday, 7:00 PM\n6 participants",
              ),

              const SizedBox(height: 32),

              // Meeting Templates Section
              const Text(
                "Meeting Templates",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              _templateBox(
                title: "Initial Family Introduction",
                desc:
                    "A structured meeting to introduce both families and discuss initial compatibility.",
              ),
              const SizedBox(height: 24),
              _templateBox(
                title: "Khutuba (Engagement) Ceremony",
                desc:
                    "A structured meeting to introduce both families and discuss initial compatibility.",
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  // reusable small button
  Widget _circleButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }

  // meeting schedule box
  Widget _meetingBox({required String title, required String subtitle}) {
    return Container(
      width: 364,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
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
                  color: Colors.brown,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.access_time, color: Colors.black),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.edit,
                color: Color.fromARGB(255, 7, 102, 10),
                size: 24,
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.delete,
                color: Color.fromARGB(255, 194, 31, 19),
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(subtitle, style: const TextStyle(fontSize: 13)),
          const SizedBox(height: 16),
          SizedBox(
            width: 294,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
              child: const Text(
                "Start Now",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 294,
            height: 70,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.brown),
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
              child: const Text(
                "Invite More",
                style: TextStyle(color: Colors.brown, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // template box
  Widget _templateBox({required String title, required String desc}) {
    return Container(
      width: 361,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
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
                  color: Colors.brown,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(desc, style: const TextStyle(fontSize: 13)),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: 185,
              height: 45,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.brown),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text(
                  "Use Template",
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
