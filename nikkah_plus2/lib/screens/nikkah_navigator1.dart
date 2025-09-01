import 'package:flutter/material.dart';
import 'nikkah_navigator2.dart';

void main() => runApp(const NikkahNavigator1());

class NikkahNavigator1 extends StatelessWidget {
  const NikkahNavigator1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  static const Color darkGreen = Color(0xFF0F7A4A); // used for dark green areas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---------- AppBar: back arrow + centered title ----------
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        title: const Text(
          "Nikkah Navigator",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      // ---------- Body ----------
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SEARCH ROW (unchanged)
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
                              'Search by name, location, profession...',
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

              const SizedBox(height: 18),

              // ------------------ NEW: Centered AI Recommendations + Recently ------------------
              // Both centered horizontally; AI Recommendations column is brown and has bold underline below it.
              Column(
                children: [
                  // Row to show both centered horizontally — using Wrap with spacing to center nicely on narrow screens
                  Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: 24,
                    children: [
                      // AI Recommendations column (brown + underline)
                      Column(
                        children: [
                          const Text(
                            'AI Recommendations',
                            style: TextStyle(
                              color: Color(0xFFb78b63), // brown
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          // bold line below (same column)
                          Container(width: 120, height: 4, color: brown),
                        ],
                      ),

                      // Recently (plain, centered)
                      const Text(
                        'Recently viewed',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // ------------------ NEW: Dark green area 371*111 with white text ------------------
              Container(
                width: 371,
                height: 111,
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: darkGreen,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'AI-Powered Match Recommendations',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 6),
                    // 5 rows text (split into 5 lines as requested)
                    const Text(
                      'These matches are selected by our AI based on',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      'your Firasa profile, preferences, and compatibility',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // White circle 23.2*23.2 with green bulb (placed at start of 3rd "row")
                        Container(
                          width: 23.2,
                          height: 23.2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.lightbulb,
                              size: 14,
                              color: greenCircle,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'factors. Our algorithm considers over 100 data points to find your',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'most compatible matches.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // ------------------ NEW: Big white profile card (371*545) - Fatima A. ------------------
              Container(
                width: 371,
                height: 545,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 8),
                  ],
                ),
                child: Column(
                  children: [
                    // Image area ~300 height (keep same overlay style as your original _profileCard)
                    SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.asset(
                                // <-- replace the path below with the actual image path for Fatima
                                "assets/images/Fatima A..png",
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: const Color(0xFFD8D8D8),
                                  );
                                },
                              ),
                            ),
                          ),

                          // top-left grey distance (if needed) - kept but you can remove
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
                              child: const Text(
                                '5 km away',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),

                          // top-right circles similar to original
                          Positioned(
                            right: 12,
                            top: 12,
                            child: Row(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: blueCircle,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: orangeCircle,
                                  ),
                                  child: const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // left bottom name and location overlayed on image: Fatima A ., 26 and below Medina,KSA
                          Positioned(
                            left: 12,
                            bottom: 12 + 112, // leave space for info area below
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Fatima A., 26',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Medina, KSA',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // right bottom green percent circle (optional)
                          Positioned(
                            right: 12,
                            bottom: 12 + 112,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: greenCircle,
                              ),
                              child: const Center(
                                child: Text(
                                  '94%',
                                  style: TextStyle(
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

                    // Below image: info area (Medical Doctor / MD from King Saud University)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Medical Doctor',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'MD from King Saud University',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Three brown buttons in a single row: Compassionate, Ambitious, Kind-Hearted
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 36,
                              margin: const EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Compassionate',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 36,
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Ambitious',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 36,
                              margin: const EdgeInsets.only(left: 6),
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Kind-Hearted',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // dark green 351*48 area with 2 rows of white text (Why we matched you...)
                    Container(
                      width: 351,
                      height: 48,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: darkGreen,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Why we matched you: Based on your Firasa profile, shared\ninterests in Islamic studies, and compatible family values.',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),

                    SingleChildScrollView(child: const SizedBox(height: 12)),

                    // Row: Firasa insights (i icon in brown circle), then three icons: red heart, whatsapp (inside green circle), and green dot indicators
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          // i in brown circle
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: brown,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                'i',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Firasa insights',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          // icons: heart (red), whatsapp (green circle), three green dots
                          Row(
                            children: [
                              const Icon(Icons.favorite, color: Colors.red),
                              const SizedBox(width: 10),
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: greenCircle,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/icons/whatsapp.png",
                                    width: 16,
                                    height: 16,
                                    color: Colors.white, // optional tint
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              // three small green dots
                              Row(
                                children: const [
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF2FB14A),
                                    size: 8,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF2FB14A),
                                    size: 8,
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF2FB14A),
                                    size: 8,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Next row: two buttons 177.55*43.42 approx -> use widths to divide space
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          // Connect (brown button)
                          Container(
                            width: 177.55,
                            height: 43.42,
                            decoration: BoxDecoration(
                              color: brown,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Connect',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          // View capability (white with brown border/text)
                          Container(
                            width: 177.55,
                            height: 43.42,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: brown),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'View capability',
                                style: TextStyle(
                                  color: brown,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), // end big card

              const SizedBox(height: 18),

              // ------------------ NEW: Second similar white box (user will add image path) ------------------
              Container(
                width: 371,
                height: 545,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 8),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.asset(
                                // <-- place your second profile image path here
                                "assets/images/Ahmed S..png",
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    Container(color: const Color(0xFFD8D8D8)),
                              ),
                            ),
                          ),

                          // left bottom overlay: name and below location (Medina, KAS as you requested)
                          Positioned(
                            left: 12,
                            bottom: 12 + 112,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Another Girl, 27',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Medina, KAS',
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // info area (copy structure from previous)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Occupation Here',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'University / details here',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // three brown tags
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 36,
                              margin: const EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Trait1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 36,
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Trait2',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 36,
                              margin: const EdgeInsets.only(left: 6),
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Trait3',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // 'Why we matched you' area
                    Container(
                      width: 351,
                      height: 48,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: darkGreen,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Why we matched you: Based on your Firasa profile, shared\ninterests and compatible family values.',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // icons row similar to previous
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: brown,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                'i',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Firasa insights',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              Icon(Icons.favorite, color: Colors.red),
                              SizedBox(width: 10),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Connect & View capability buttons
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            width: 177.55,
                            height: 43.42,
                            decoration: BoxDecoration(
                              color: brown,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Connect',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 177.55,
                            height: 43.42,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: brown),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'View capability',
                                style: TextStyle(
                                  color: brown,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // ------------------ Change View All button text to View More AI Recommendation ------------------
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
                      'View More AI Recommendation',
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

              // From here onwards: keep the rest of original sections (Search your history, Saved Searches, Recent Searches, Enhance your search experiences, 6 small boxes etc.)
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Search your history',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 10),

              // ---------- Saved Searches box (replaced with requested structure) ----------
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
                      'Saved Searches',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Ideal Matches',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            _iconWithCircularBorder(
                              Icons.remove_red_eye,
                              Colors.brown,
                            ),
                            const SizedBox(width: 8),
                            _iconWithCircularBorder(Icons.delete, Colors.red),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Age 25-30, Doctor/Engineer, Practicing...'),
                    const SizedBox(height: 6),
                    const Text('Family-oriented...'),
                    const SizedBox(height: 6),
                    const Text(
                      'Last used: 2 days ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Local Matches',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            _iconWithCircularBorder(
                              Icons.remove_red_eye,
                              Colors.brown,
                            ),
                            const SizedBox(width: 8),
                            _iconWithCircularBorder(Icons.delete, Colors.red),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Within 10km, Active in last week...'),
                    const SizedBox(height: 6),
                    const Text(
                      'Last used: 1 week ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: brown,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NikkahNavigator2(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Create new saved search',
                            style: TextStyle(
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

              const SizedBox(height: 12),

              // ---------- Recent Searches box (with green "use" tags) ----------
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
                    _recentSearchItemWithUse('Medical professionals in Riyadh'),
                    _recentSearchItemWithUse('Women aged 25-30 in Dubai'),
                    _recentSearchItemWithUse('Software engineers, 30-35'),
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

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enhance your search experiences',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
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
                            color: const Color(0xFFEFE9E1),
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

              // bottom nav-like rounded row with 4 icons (unchanged)
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

  // Helper: big profile card (kept as reference but we removed the two old ones and added new ones above)
  // ignore: unused_element
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
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Container(color: const Color(0xFFD8D8D8)),
                    ),
                  ),
                ),
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
                Positioned(
                  right: 12,
                  top: 12,
                  child: Row(
                    children: [
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
                Positioned(
                  left: 12,
                  bottom: 12 + 72,
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

  // new: recent search item with green "use" tag (as requested)
  Widget _recentSearchItemWithUse(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.search, size: 18, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: greenCircle,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              'use',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
