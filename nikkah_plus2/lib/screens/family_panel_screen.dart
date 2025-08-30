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
              // Back arrow + Title
              Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Family Panel",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Virtual Meeting + Family Members + Shared Conversations
              Row(
                children: [
                  const Text(
                    "Virtual Meeting",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Family Members",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 40),
                  Flexible(
                    child: Text(
                      "Shared Conversations",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.brown, thickness: 2),
              const SizedBox(height: 20),

              // Green info box
              Container(
                width: 360,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "The Virtual Meeting Room allows you to arrange video calls, chats, and discussions between you, your match, and both families during the Khutuba (engagement) process.",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Example Meeting Item
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Meeting with Ahmed Ibrahim's family...",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 12),

              // Icons row inside buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _circleIconButton(Icons.chat, Colors.black),
                  _circleIconButton(Icons.notifications, Colors.black),
                  _circleIconButton(Icons.mic, Colors.black),
                  _circleIconButton(Icons.videocam, Colors.black),
                  _circleIconButton(Icons.call_end, Colors.red),
                ],
              ),
              const SizedBox(height: 20),

              // Join Call Button
              Center(
                child: Container(
                  width: 184,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
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

              // Scheduled Meetings Section
              const Text(
                "Scheduled Meetings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Scheduled Meeting Example
              Container(
                width: 364,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _circleIconButton(
                          Icons.access_time,
                          Colors.black,
                          bgColor: Colors.brown,
                          size: 40,
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            "Khutuba Discussion with Omar's Family",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        _circleIconButton(
                          Icons.edit,
                          Colors.green,
                          borderColor: Colors.green,
                          size: 28,
                        ),
                        const SizedBox(width: 8),
                        _circleIconButton(
                          Icons.delete,
                          Colors.red,
                          borderColor: Colors.red,
                          size: 28,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Tomorrow, 7:00 PM\n6 participants",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Bottom bar darker brown
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.brown.shade800,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _circleIconButton(
                      Icons.home,
                      Colors.white,
                      bgColor: Colors.brown.shade600,
                    ),
                    _circleIconButton(
                      Icons.people,
                      Colors.white,
                      bgColor: Colors.brown.shade600,
                    ),
                    _circleIconButton(
                      Icons.calendar_today,
                      Colors.white,
                      bgColor: Colors.brown.shade600,
                    ),
                    _circleIconButton(
                      Icons.settings,
                      Colors.white,
                      bgColor: Colors.brown.shade600,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Circle Button
  Widget _circleIconButton(
    IconData icon,
    Color iconColor, {
    Color? bgColor,
    Color? borderColor,
    double size = 40,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor ?? Colors.black),
      ),
      child: Icon(icon, color: iconColor, size: size * 0.6),
    );
  }
}
