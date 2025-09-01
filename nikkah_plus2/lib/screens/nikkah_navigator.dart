import 'package:flutter/material.dart';

void main() => runApp(const NikkahNavigator());

class NikkahNavigator extends StatelessWidget {
  const NikkahNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrimonial UI Replica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Colors used (approximate to your description)
  static const Color lightBrown = Color(0xFFefe1d0); // background-ish
  static const Color brown = Color(0xFFb78b63); // primary brown
  static const Color darkBrown = Color(0xFF7f4f33); // dark portion in search
  static const Color greyButton = Color(
    0xFFF2F2F2,
  ); // top-left overlay on images
  static const Color blueCircle = Color(0xFF4A90E2);
  static const Color orangeCircle = Color(0xFFF5A623);
  static const Color greenCircle = Color(0xFF2FB14A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // safe scrolling
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SEARCH ROW (search bar with light brown text placeholder and dark brown small filter chip)
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBF6F1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE9E0D5)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.search,
                            color: Colors.brown,
                            size: 22,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Search',
                              style: TextStyle(color: brown.withOpacity(0.9)),
                            ),
                          ),
                          // dark brown portion at end with white FILTER text and a white symbol
                          Container(
                            height: 48,
                            width: 72,
                            decoration: BoxDecoration(
                              color: darkBrown,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // white circular symbol on left inside dark brown
                                Container(
                                  width: 18,
                                  height: 18,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'Filter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // One white box 371*103 with three options inside
              Container(
                width: 371,
                height: 103,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Guided Search (white text on brown button)
                    Expanded(
                      child: Row(
                        children: [
                          // symbol like UI
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F0EA),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Guided Search',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: brown,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'Guided Search',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Advanced search (black button with white text and a small symbol)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.tune, color: Colors.white, size: 16),
                          SizedBox(width: 6),
                          Text(
                            'Advanced',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 6),

                    // Saved Search (black text and brown symbol)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Saved Search',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Main profile container (371*448)
              Column(
                children: [
                  _profileCard(
                    context,
                    imagePath: "assets/images/Amina R..png",
                    distanceText: '5 km away',
                    leftBottomName: 'Amina R., 28',
                    leftBottomLocation: 'Dubai, UAE',
                    percent: '92%',
                    topRightFirstCircleWidget: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16,
                    ),
                    topRightSecondCircleWidget: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 14,
                    ),
                    infoTitle: 'Medical Doctor',
                    infoSubtitle: 'Arabian Gulf University • 2 years ago',
                  ),
                  const SizedBox(height: 16),
                  _profileCard(
                    context,
                    imagePath: "assets/images/Yusuf H..png",
                    distanceText: '15 km away',
                    leftBottomName: 'Yusuf H., 32',
                    leftBottomLocation: 'Riyadh, KSA',
                    percent: '88%',
                    topRightFirstCircleWidget: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16,
                    ),
                    topRightSecondCircleWidget: const Icon(
                      Icons.star_border,
                      color: Colors.white,
                      size: 14,
                    ),
                    infoTitle: 'Software Engineer',
                    infoSubtitle: 'King Saud University • 4 years',
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // View All button 294*70 rounded, light brown with white text
              Center(
                child: Container(
                  width: 294,
                  height: 70,
                  decoration: BoxDecoration(
                    color: lightBrown,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Center(
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // Search your history title
              const Text(
                'Search your history',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 10),

              // White box 338*336 with statement and brown button at end "Create new saved search"
              Container(
                width: 338,
                height: 336,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saved Searches',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Your recent saved searches will show here. Use them to quickly find matches that you looked at before.',
                    ),
                    const Spacer(),

                    // row: Ideal match, Local match with icons and circular outlines
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _iconWithCircularBorder(
                          Icons.remove_red_eye,
                          Colors.brown,
                        ),
                        _iconWithCircularBorder(Icons.delete, Colors.red),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: brown,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Create new saved search',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Another white box like previous for recent searches (same size)
              Container(
                width: 338,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent Searches',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    // list of statements with search icon left
                    _recentSearchItem('Medical professionals in Riyadh'),
                    _recentSearchItem('Women aged 25-30 in Dubai'),
                    _recentSearchItem('Software engineers, 30-35'),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                        color: brown,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Clear recent searches',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'Enhance your search experiences',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 12),

              // 6 small boxes (each 118*102) arranged in 2 rows x 3 columns
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(6, (index) {
                  final titles = [
                    'Ask the Mufti',
                    'Family Panel',
                    'Mahr Calculator',
                    'Firasa Insights',
                    'Emotional Journey',
                    'AI Companion',
                  ];
                  return SizedBox(
                    width: 118,
                    height: 102,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFEFE9E1), // background circle
                          ),
                          child: Center(
                            child: Icon(
                              _iconForIndex(index),
                              size: 22,
                              color: brown,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          titles[index],
                          style: const TextStyle(
                            color: Color(0xFFB28767),
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ),

              const SizedBox(height: 18),

              // 371*70 button with 4 white icons, rounded
              Center(
                child: Container(
                  width: 371,
                  height: 70,
                  decoration: BoxDecoration(
                    color: brown,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.home, color: Colors.white),
                      Icon(Icons.search, color: Colors.white),
                      Icon(Icons.message, color: Colors.white),
                      Icon(Icons.person, color: Colors.white),
                    ],
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

  // Helper: big profile card
  Widget _profileCard(
    BuildContext context, {
    required String imagePath,
    required String distanceText,
    required String leftBottomName,
    required String leftBottomLocation,
    required String percent,
    required Widget topRightFirstCircleWidget,
    required Widget topRightSecondCircleWidget,
    required String infoTitle,
    required String infoSubtitle,
  }) {
    return Container(
      width: 371,
      height: 448,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Color(0x11000000), blurRadius: 8)],
      ),
      child: Column(
        children: [
          // image area (approx half)
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                // image
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // fallback if asset missing
                        return Container(color: const Color(0xFFD8D8D8));
                      },
                    ),
                  ),
                ),

                // top-left grey button: distance
                Positioned(
                  left: 12,
                  top: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: greyButton,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      distanceText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // top-right two small circles (27.99*27.99 approx -> use 28)
                Positioned(
                  right: 12,
                  top: 12,
                  child: Row(
                    children: [
                      // blue circle with tick
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: blueCircle,
                        ),
                        child: Center(child: topRightFirstCircleWidget),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: orangeCircle,
                        ),
                        child: Center(child: topRightSecondCircleWidget),
                      ),
                    ],
                  ),
                ),

                // left bottom name and location (white text on image)
                Positioned(
                  left: 12,
                  bottom: 12 + 72, // leave space for the profile info area
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        leftBottomName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        leftBottomLocation,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                // right bottom green 40*40 with percent white text
                Positioned(
                  right: 12,
                  bottom: 12 + 72,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: greenCircle,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        percent,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // bottom area with info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  infoTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(infoSubtitle, style: TextStyle(color: Colors.grey[700])),
                const SizedBox(height: 8),
                // small row of icons/info similar to UI
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Location details',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          '29 yrs',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // helper recent search item row
  Widget _recentSearchItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.search, size: 18, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  // helper for the circular icons in the 6 boxes
  IconData _iconForIndex(int idx) {
    switch (idx) {
      case 0:
        return Icons.gavel; // ask the mufti
      case 1:
        return Icons.group; // family panel
      case 2:
        return Icons.calculate; // mahr calculator
      case 3:
        return Icons.insights; // firasa insights
      case 4:
        return Icons.favorite; // emotional journey
      default:
        return Icons.smart_toy; // ai companion
    }
  }

  // widget: icon with circular border (used for eye and delete)
  Widget _iconWithCircularBorder(IconData icon, Color borderColor) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Center(child: Icon(icon, color: borderColor)),
    );
  }
}
