import 'package:flutter/material.dart';
import 'mahr_calculator2_screen.dart'; // Make sure this import is correct

class MahrCalculator1Screen extends StatelessWidget {
  const MahrCalculator1Screen({super.key});

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
              // Main Heading
              const Center(
                child: Text(
                  'Mahr Calculator',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Tabs Row with Navigator
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MahrCalculator2Screen(),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Calculator',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(height: 2, width: 100, color: Colors.brown),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MahrCalculator2Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Cultural Customs',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MahrCalculator2Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Mahr Process',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Icon + Heading + sub text
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/icon.png'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Personalized Mahr Estimate',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Calculate based on profile or custom factors',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Text(
                'The Mahr is an obligatory gift from the husband to the wife upon marriage in Islam. This calculator provides a suggested range based on cultural norms, personal circumstances, and regional standards.',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),

              Image.asset('assets/images/mahr1.png'),

              const SizedBox(height: 16),

              const Text(
                'Select Profiles',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 16),

              Image.asset('assets/images/mahr2.png'),
              const SizedBox(height: 8),
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Sara Al-Dasari',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "28, Saudi Arabia, Bachelor's degree",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/mahr3.png'),
              const SizedBox(height: 8),
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Amina Rahman',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "25, Bangladesh, Master's degree",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/mahr4.png'),

              const SizedBox(height: 24),

              const Text(
                'View Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 8),
              const Text(
                'Education Level',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/edu.png'),

              const SizedBox(height: 8),
              const Text(
                'Financial Status',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/fin.png'),

              const SizedBox(height: 8),
              const Text(
                'Cultural Background',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/cult.png'),

              const SizedBox(height: 8),
              const Text(
                'Age',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Stack(
                children: [
                  Image.asset('assets/images/age.png'),
                  Positioned(left: 0, bottom: 0, child: const Text('18')),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 32,
                    bottom: 0,
                    child: const Text('28'),
                  ),
                  Positioned(right: 0, bottom: 0, child: const Text('60')),
                ],
              ),

              const SizedBox(height: 8),
              const Text(
                'Marital Status',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/marital.png'),

              const SizedBox(height: 8),
              const Text(
                'Employment Status',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/emp.png'),

              const SizedBox(height: 8),
              const Text(
                'Region',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),

              const SizedBox(height: 16),
              Image.asset('assets/images/region.png'),

              const SizedBox(height: 16),
              const Text(
                'Your Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 8),
              Image.asset('assets/images/info.png'),

              const SizedBox(height: 8),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown.shade200,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Save for Later',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.brown.shade200),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        'Share with Match',
                        style: TextStyle(
                          color: Colors.brown.shade200,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Bottom Rounded Button with Navigator
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MahrCalculator2Screen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/box.png', height: 24),
                      Image.asset('assets/images/box1.png', height: 24),
                      Image.asset('assets/images/box2.png', height: 24),
                      Image.asset('assets/images/box3.png', height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
