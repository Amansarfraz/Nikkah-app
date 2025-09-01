import 'package:flutter/material.dart';

void main() => runApp(const NikkahNavigator3());

class NikkahNavigator3 extends StatelessWidget {
  const NikkahNavigator3({super.key});
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

  static const Color brown = Color(0xFFb78b63);
  static const Color darkBrown = Color(0xFF7f4f33);
  static const Color greenCircle = Color(0xFF2FB14A);

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
            Navigator.maybePop(context);
          },
        ),
        title: const Text(
          "Nikkah Navigator",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 Search bar
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
                          const Expanded(
                            child: Text(
                              'Search by name, location, profession...',
                              style: TextStyle(color: Colors.brown),
                            ),
                          ),
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
                            child: const Center(
                              child: Text(
                                'Filter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Recently Viewed + Saved Profile row
              Row(
                children: const [
                  Text(
                    "Recently Viewed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 10, 10),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Saved Profile",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255, 150, 84, 22),
                      decorationThickness: 3,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // 🆕 White box with heart + text + button
              Container(
                width: 362,
                height: 285,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Color(0x11000000), blurRadius: 6),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Heart outline
                    Icon(
                      Icons.favorite_border,
                      color: const Color.fromARGB(255, 170, 13, 2),
                      size: 48,
                    ),

                    const SizedBox(height: 12),
                    const Text(
                      "No saved profiles yet...",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 20),
                    const Text(
                      "When you find someone interesting, save their..",
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "profile to view later...",
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 24),
                    SizedBox(
                      width: 180,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: brown,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Discover",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // 🔎 Search history title
              const Text(
                'Search your history',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),

              // Saved Searches box (unchanged)
              _savedSearchesBox(),

              const SizedBox(height: 12),

              // Recent Searches box (unchanged)
              _recentSearchesBox(),

              const SizedBox(height: 16),

              const Text(
                'Enhance your search experiences',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 12),

              // Keep your features grid (unchanged)
              _enhanceGrid(),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Helper Widgets ----------

  Widget _savedSearchesBox() {
    return Container(
      width: 338,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Color(0x11000000), blurRadius: 6)],
      ),
      child: const Text(
        "Saved Searches section...",
      ), // keep your original code here
    );
  }

  Widget _recentSearchesBox() {
    return Container(
      width: 338,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Color(0x11000000), blurRadius: 6)],
      ),
      child: const Text(
        "Recent Searches section...",
      ), // keep your original code here
    );
  }

  Widget _enhanceGrid() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(6, (index) {
        return Container(
          width: 118,
          height: 102,
          color: Colors.brown.shade50,
          child: const Center(child: Text("Feature")),
        );
      }),
    );
  }
}
