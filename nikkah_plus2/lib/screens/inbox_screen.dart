import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Inbox',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // First two images vertically stacked & joined
              Image.asset('assets/images/ibimage1.png', fit: BoxFit.cover),
              Image.asset('assets/images/ibimage2.png', fit: BoxFit.cover),

              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'ACTIVE CONVERSATIONS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(child: Image.asset('assets/images/active1.png')),
              const SizedBox(height: 10),
              Center(child: Image.asset('assets/images/active2.png')),
              const SizedBox(height: 20),

              // Pending Requests heading now left aligned
              const Text(
                'Pending Requests',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Center(child: Image.asset('assets/images/pending.png')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
