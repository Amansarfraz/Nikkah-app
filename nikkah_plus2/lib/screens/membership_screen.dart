import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MembershipPlansScreen(),
    ),
  );
}

class MembershipPlansScreen extends StatelessWidget {
  const MembershipPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color green = const Color(0xFF2E7D32);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Membership Plans',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Upgrade Your Journey to Love',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text(
              'Choose the plan that best fits your needs and unlock premium features to find your perfect match.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // Billing Period Selector
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _billingButton('Monthly', true, green),
                _billingButton('3 Months', false, green),
                _billingButton('6 Months', false, green),
                _billingButton('12 Months', false, green),
              ],
            ),
            const SizedBox(height: 20),
            // Free Plan Card
            _planCard(
              title: 'Free',
              price: '\$0 /month',
              description: 'Basic features to get started',
              features: [
                'Create a profile',
                'Browse profiles',
                '5 likes per day',
                'Basic matching algorithm',
              ],
              buttonText: 'Select Plan',
              tag: '',
              green: green,
            ),
            const SizedBox(height: 16),
            // Silver Plan Card
            _planCard(
              title: 'Silver',
              price: '\$19.99 /month',
              description: 'Enhanced features for serious seekers',
              features: [
                'All Free features',
                'Unlimited likes',
                'See who likes you',
                'Advanced filters',
                'Unlimited chats',
                '1 profile boost per month',
                'Basic Fisso insights',
                'Advanced AI matching',
              ],
              buttonText: 'Your Current Plan',
              tag: 'Most Popular',
              green: green,
            ),
            const SizedBox(height: 16),
            // Gold Plan Card
            _planCard(
              title: 'Gold',
              price: '\$39.99 /month',
              description: 'Premium features for ultimate experience',
              features: [
                'All Silver features',
                'Priority in search results',
                'Full Fisso personality analysis',
                'Access to all profile photos',
                '4 profile boosts per month',
                'Premium badge on profile',
                'Priority customer support',
              ],
              buttonText: 'Your Current Plan',
              tag: '',
              green: green,
            ),
            const SizedBox(height: 20),
            // Feature Comparison Table
            _comparisonTable(),
            const SizedBox(height: 20),
            // Upgrade Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
              ),
              child: const Text(
                'Upgrade to Gold',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "You'll be charged \$39.99 monthly. Cancel anytime.",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  static Widget _billingButton(String text, bool active, Color green) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: active ? green : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(color: active ? Colors.white : Colors.black),
      ),
    );
  }

  static Widget _planCard({
    required String title,
    required String price,
    required String description,
    required List<String> features,
    required String buttonText,
    required String tag,
    required Color green,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (tag.isNotEmpty)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(description),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: features
                  .map(
                    (feature) => Row(
                      children: [
                        const Icon(Icons.check, color: Colors.green, size: 16),
                        const SizedBox(width: 4),
                        Expanded(child: Text(feature)),
                      ],
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _comparisonTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      children: [
        _tableRow(['Feature', 'Free', 'Silver', 'Gold'], isHeader: true),
        _tableRow(['Profile Creation', '✔', '✔', '✔']),
        _tableRow(['Daily Likes', '5', 'Unlimited', 'Unlimited']),
        _tableRow(['See Who Likes You', '✖', '✔', '✔']),
        _tableRow(['Advanced Filters', '✖', '✔', '✔']),
        _tableRow(['Profile Boosts', '✖', '1/month', '4/month']),
        _tableRow(['Fisso Insights', '✖', 'Basic', 'Full Analysis']),
        _tableRow(['AI Matching', 'Basic', 'Advanced', 'Full']),
        _tableRow(['Access to All Photos', '✖', '✖', '✔']),
      ],
    );
  }

  static TableRow _tableRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
      decoration: BoxDecoration(
        color: isHeader ? Colors.grey[300] : Colors.white,
      ),
      children: cells
          .map(
            (cell) => Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  cell,
                  style: TextStyle(
                    fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
