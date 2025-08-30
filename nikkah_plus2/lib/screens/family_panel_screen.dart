import 'package:flutter/material.dart';

void main() {
  runApp(const FamilyPanelApp());
}

class FamilyPanelApp extends StatelessWidget {
  const FamilyPanelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FamilyPanelScreen(),
    );
  }
}

class FamilyPanelScreen extends StatelessWidget {
  const FamilyPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const goldenBrown = Color(0xFFb08a63);
    const lightBorder = Color(0xFFE0E0E0);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: goldenBrown,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Family Panel',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_vert, color: Colors.grey),
                ],
              ),

              const SizedBox(height: 16),

              // Tabs
              Row(
                children: const [
                  Text(
                    'Virtual Meetings',
                    style: TextStyle(
                      color: goldenBrown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text('Family Members', style: TextStyle(color: Colors.grey)),
                ],
              ),

              const SizedBox(height: 20),

              // Thin line under Virtual Meetings (same color as tab text)
              Container(height: 2, width: 140, color: goldenBrown),

              const SizedBox(height: 12),

              // Virtual Meeting Room row with brown circle on right
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: lightBorder),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Left column with title & description
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Virtual Meeting Room',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'The Virtual Meeting Room allows you to arrange video calls, chats, and discussions between you, your match, and both families during the Khutuba (engagement) process.',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 12),

                    // Right brown circle with black meeting symbol inside
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: goldenBrown,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.event, color: Colors.black, size: 20),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // 360 x 61 dark green box with small white circle 23.3 x 23.3 on right containing dark green 'i'
              Container(
                width: 360,
                height: 61,
                decoration: BoxDecoration(
                  color: Colors.green[800], // dark green
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    // Left text (white)
                    const Expanded(
                      child: Text(
                        'You can schedule meetings, invite specific family members, and control the meeting agenda...',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    // Right small white circle with dark green 'i'
                    Container(
                      width: 23.3,
                      height: 23.3,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.info,
                          color: Colors.green[800],
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Active Meeting boxed area with small green circle then "Active Meeting" bold, then meeting title
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: lightBorder),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row with small green circle and Active Meeting
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
                          'Active Meeting',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Meeting title
                    const Text(
                      'Meeting with Ahmed Ibrahim\'s family',
                      style: TextStyle(fontSize: 14),
                    ),

                    const SizedBox(height: 12),

                    // Image path (placeholder box)
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text('assets/images/meeting_image.png'),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Icon row with 5 circular outlines (black stroke) and internal icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _outlinedIcon(40, Icons.chat_bubble, Colors.black),
                        _outlinedIcon(40, Icons.notifications, Colors.black),
                        _outlinedIcon(40, Icons.mic, Colors.black),
                        _outlinedIcon(40, Icons.videocam, Colors.black),
                        // existing red circular call_end from earlier code
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: const Center(
                            child: Icon(Icons.call_end, color: Colors.white),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Join Call button sized 184 x 45 brown with white text
                    Center(
                      child: SizedBox(
                        width: 184,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: goldenBrown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Join Call',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Scheduled Meetings title
              const Text(
                'Scheduled Meetings',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              // White rounded box 364 x 306
              Container(
                width: 364,
                height: 306,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: lightBorder),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top row with brown 40x40 circle (clock) at right and meeting title + icons
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Khutuba Discussion with Omar's Family",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Right side 40x40 brown circle with black clock symbol (needle brown)
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: goldenBrown,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(Icons.access_time, color: Colors.black),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // Row with small green circle edit and red circle delete and on the right small black avatars as per names
                    Row(
                      children: [
                        // green outlined 28x28 circle with edit icon
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.edit,
                              color: Colors.green,
                              size: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // red outlined 28x28 circle with delete icon
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 16,
                            ),
                          ),
                        ),

                        const Spacer(),

                        // right side small black icons representing participants (example)
                        Row(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // Two-line details: Tomorrow, 7:00 PM / 6 participants (but user wanted 'Tomorrow' for first)
                    const Text('Tomorrow, 7:00 PM'),
                    const SizedBox(height: 4),
                    const Text('6 participants'),

                    const SizedBox(height: 16),

                    // Start Now brown 294 x 70 button with rounded corners and white text
                    Center(
                      child: SizedBox(
                        width: 294,
                        height: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: goldenBrown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              // four icons inside as per screenshot (approximated)
                              Icon(Icons.chat_bubble, color: Colors.white),
                              SizedBox(width: 12),
                              Icon(Icons.group, color: Colors.white),
                              SizedBox(width: 12),
                              Icon(Icons.calendar_today, color: Colors.white),
                              SizedBox(width: 12),
                              Icon(Icons.lock, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Two buttons row: white outlined Invite More
                    Row(children: [Expanded(child: Container())]),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Second scheduled meeting box (similar to first) but with "Mahr Discussion with Ahmed's Family" and Saturday
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: lightBorder),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Mahr Discussion with Ahmed's Family",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: goldenBrown,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(Icons.access_time, color: Colors.black),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),
                    const Text('Saturday, 7:00 PM'),
                    const SizedBox(height: 4),
                    const Text('6 participants'),

                    const SizedBox(height: 12),

                    // Start Now and Invite More buttons
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: goldenBrown,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Start Now',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: goldenBrown),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Invite More',
                                style: TextStyle(color: goldenBrown),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Meeting Templates title
              const Text(
                'Meeting Templates',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              // Template box 361 x 199
              Container(
                width: 361,
                height: 199,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: lightBorder),
                  color: Colors.white,
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
                            color: goldenBrown,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(Icons.person, color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            'Initial Family Introduction',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'A structured meeting to introduce both families and discuss initial compatibility.',
                    ),

                    const Spacer(),

                    // Use Template button 185 x 45 with brown border
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 185,
                        height: 45,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: goldenBrown),
                            foregroundColor: goldenBrown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Use Template'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Second template box with Khutuba (Engagement) Ceremony
              Container(
                width: 361,
                height: 199,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: lightBorder),
                  color: Colors.white,
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
                            color: goldenBrown,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(Icons.person, color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            'Khutuba (Engagement) Ceremony',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'A structured meeting to introduce both families and discuss initial compatibility.',
                    ),

                    const Spacer(),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 185,
                        height: 45,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: goldenBrown),
                            foregroundColor: goldenBrown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Use Template'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Bottom brown button 351 x 70 with four icons inside (from screenshot)
              Center(
                child: SizedBox(
                  width: 351,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: goldenBrown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.chat_bubble, color: Colors.white),
                        Icon(Icons.group, color: Colors.white),
                        Icon(Icons.calendar_today, color: Colors.white),
                        Icon(Icons.videocam, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper to create outlined circular icon with black stroke
Widget _outlinedIcon(double size, IconData icon, Color iconColor) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.black),
    ),
    child: Center(child: Icon(icon, color: iconColor)),
  );
}
