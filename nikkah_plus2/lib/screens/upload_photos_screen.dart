import 'package:flutter/material.dart';
import 'religious_background_screen.dart';

class UploadPhotosScreen extends StatelessWidget {
  const UploadPhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF9F5),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Upload Photos",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),

            // Subtitle
            const Text(
              "Add photos to your profile. Your main photo\nwill be visible to all users, while additional\nphotos can be unlocked by matches.*",
              style: TextStyle(fontSize: 14, color: Colors.black87),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            // Grid of photos
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: List.generate(9, (index) {
                if (index == 0) {
                  return Column(
                    children: [
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.brown.shade300),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.brown,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Add photo",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  );
                } else {
                  return Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.add, color: Colors.grey),
                  );
                }
              }),
            ),

            const SizedBox(height: 32),

            // Photo Guidelines Box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFDFF6F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.info, color: Colors.teal, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "Photo Guidelines",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text("• Photos should be modest and respectful"),
                  Text("• Clear face visibility in main photo"),
                  Text("• No group photos as main photo"),
                  Text("• Additional photos can show hobbies and interests"),
                ],
              ),
            ),

            const Spacer(),

            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReligiousBackgroundScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD8CFC2),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
