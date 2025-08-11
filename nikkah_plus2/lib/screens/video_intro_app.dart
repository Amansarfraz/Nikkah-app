import 'package:flutter/material.dart';
import 'bio_screen_app.dart';

void main() => runApp(VideoIntroApp());

class VideoIntroApp extends StatelessWidget {
  const VideoIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoIntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class VideoIntroPage extends StatelessWidget {
  const VideoIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Video Introduction",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "A short video helps build trust and shows your authentic self.",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFEAF8F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Optional",
                    style: TextStyle(fontSize: 12, color: Color(0xFF1BC38F)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose a prompt to answer:',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              items: [
                'Prompt 1',
                'Prompt 2',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (val) {},
            ),
            SizedBox(height: 20),

            // Video placeholder
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.videocam, size: 36, color: Colors.grey),
                  SizedBox(width: 12),
                  Text(
                    "Your video will appear here...",
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Record Video Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.videocam),
                label: Text("Record Video Intro"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xFFF6F6F6),
                  elevation: 0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),

            // Info Box
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFEAF8F3),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: Colors.black),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Why add a voice or video intro?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("• Builds trust and emotional connection"),
                        Text("• Shows your authentic personality"),
                        Text("• Profiles with intros receive 3x more matches"),
                        Text("• Helps potential matches feel more comfortable"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            // Skip Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Skip"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                  ), // Increased height
                  side: BorderSide(color: Colors.black12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),

            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BioScreenApp(),
                    ),
                  );
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD9C8B4),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                  ), // Increased height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
